/*
 * Copyright 2012-2022 CodeLibs Project and the Others.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language
 * governing permissions and limitations under the License.
 */
package org.codelibs.fess;

// DO NOT DEPEND OTHER JARs

import java.io.File;

import org.apache.catalina.Context;
import org.apache.catalina.Host;
import org.apache.catalina.core.StandardHost;
import org.codelibs.core.lang.StringUtil;
import org.codelibs.fess.tomcat.valve.SuppressErrorReportValve;
import org.codelibs.fess.tomcat.webresources.FessWebResourceRoot;
import org.dbflute.tomcat.TomcatBoot;

public class FessBoot extends TomcatBoot {

    private static final String LOGGING_PROPERTIES = "logging.properties";

    private static final String FESS_CONTEXT_PATH = "fess.context.path";

    private static final String FESS_PORT = "fess.port";

    private static final String FESS_TEMP_PATH = "fess.temp.path";

    private static final String FESS_VAR_PATH = "fess.var.path";

    private static final String FESS_WEBAPP_PATH = "fess.webapp.path";

    private static final String JAVA_IO_TMPDIR = "java.io.tmpdir";

    private static final String TOMCAT_CONFIG_PATH = "tomcat.config.path";

    public FessBoot(final int port, final String contextPath) {
        super(port, contextPath);
    }

    @Override
    protected String prepareWebappPath() {
        final String value = System.getProperty(FESS_WEBAPP_PATH);
        if (value != null) {
            return value;
        }
        return super.prepareWebappPath();
    }

    @Override
    protected String getMarkDir() {
        return new File(System.getProperty(JAVA_IO_TMPDIR), "fessboot").getAbsolutePath();
    }

    // ===================================================================================
    //                                                                        main
    //                                                                        ============

    public static void main(final String[] args) {
        // update java.io.tmpdir
        final String tempPath = System.getProperty(FESS_TEMP_PATH);
        if (tempPath != null) {
            System.setProperty(JAVA_IO_TMPDIR, tempPath);
        }

        final TomcatBoot tomcatBoot = new FessBoot(getPort(), getContextPath()) //
                .useTldDetect(); // for JSP
        final String varPath = System.getProperty(FESS_VAR_PATH);
        if (varPath != null) {
            tomcatBoot.atBaseDir(new File(varPath, "webapp").getAbsolutePath());
        } else if (tempPath != null) {
            tomcatBoot.atBaseDir(new File(tempPath, "webapp").getAbsolutePath());
        }
        final String tomcatConfigPath = getTomcatConfigPath();
        if (tomcatConfigPath != null) {
            tomcatBoot.configure(tomcatConfigPath); // e.g. URIEncoding
        }
        tomcatBoot.logging(LOGGING_PROPERTIES, op -> {
            op.ignoreNoFile();
            String fessLogPath = System.getProperty("fess.log.path");
            if (fessLogPath == null) {
                fessLogPath = "../../logs";
            }
            op.replace("fess.log.path", fessLogPath.replace("\\", "/"));
        }).asYouLikeIt(resource -> {
            final Host host = resource.getHost();
            if (host instanceof final StandardHost standardHost) {
                standardHost.setErrorReportValveClass(SuppressErrorReportValve.class.getName());
            }
        }).useTldDetect(jarName -> (jarName.contains("jstl") || jarName.contains("lasta-taglib"))).asDevelopment(isNoneEnv()).bootAwait();
    }

    public static void shutdown(final String[] args) {
        System.exit(0);
    }

    private static boolean isNoneEnv() {
        return System.getProperty("lasta.env") == null;
    }

    protected static int getPort() {
        final String value = System.getProperty(FESS_PORT);
        if (value != null) {
            return Integer.parseInt(value);
        }
        return 8080;
    }

    protected static String getContextPath() {
        final String value = System.getProperty(FESS_CONTEXT_PATH);
        if (value != null && !"/".equals(value)) {
            return value;
        }
        return StringUtil.EMPTY;
    }

    protected static String getTomcatConfigPath() {
        return System.getProperty(TOMCAT_CONFIG_PATH);
    }

    @Override
    protected void setupWebappContext() {
        super.setupWebappContext();
        String contextPath = getContextPath();
        if (contextPath.length() > 0 && contextPath.endsWith("/")) {
            contextPath = contextPath.replaceAll("/+$", StringUtil.EMPTY);
        }
        final Context context = (Context) server.getHost().findChild(contextPath);
        if (context != null) {
            context.setResources(new FessWebResourceRoot(context));
        }
    }
}
