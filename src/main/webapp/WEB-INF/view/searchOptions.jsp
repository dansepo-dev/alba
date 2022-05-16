<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<h3 id="searchOptionsLabel">
	<la:message key="labels.search_options" />
</h3>
<div>

	<fieldset class="form-group">
		<legend>共通フィルタ</legend>
		<label for="contentFilter">共通フィルタ</label>
		<la:select property="ft_cm" styleId="commonFilterSearchOption" styleClass="form-control">

			<option value="">-  共通フィルタ  -</option>
			<la:option value="SiC">SiC</la:option>
			<la:option value="GaN">GaN</la:option>
			<la:option value="MOSFET">MOSFET</la:option>
			<la:option value="モジュール">モジュール</la:option>
			<la:option value="DAB">DAB</la:option>
			<la:option value="三相インバータ">三相インバータ</la:option>
			<la:option value="PFC回路">PFC回路</la:option>
			<la:option value="単相インバータ">単相インバータ</la:option>
			<la:option value="DCDCコンバータ">DCDCコンバータ</la:option>
			<la:option value="蓄電システム">蓄電システム</la:option>
			<la:option value="PFC電源">PFC電源</la:option>
			<la:option value="スイッチング電源">スイッチング電源</la:option>
			<la:option value="パワーコンディショナー">パワーコンディショナー</la:option>
			<la:option value="系統連系インバータ">系統連系インバータ</la:option>
			<la:option value="非接触給電">非接触給電</la:option>
			<la:option value="12V">12V</la:option>
			<la:option value="24V">24V</la:option>
			<la:option value="48V">48V</la:option>
			<la:option value="360V">360V</la:option>
			<la:option value="500V">500V</la:option>
			<la:option value="800V">800V</la:option>
			<la:option value="1200V">1200V</la:option>
			<la:option value="10A">10A</la:option>
			<la:option value="30A">30A</la:option>
			<la:option value="50A">50A</la:option>
			<la:option value="200A">200A</la:option>
			<la:option value="10kHz">10kHz</la:option>
			<la:option value="100kHz">100kHz</la:option>
			<la:option value="1MHz">1MHz</la:option>

		</la:select>
	</fieldset>

	<input type="hidden" name="ex_q" id="filter1" value="" />
	<input type="hidden" name="fields.label" id="filter2" value="" />

	<%-- SOURCE --%>
	<fieldset class="form-group">
		<legend>情報ソース</legend>
		<label for="contentFilter">情報ソース</label>
		<la:select property="ft_sc" styleId="sourceFilterSearchOption" styleClass="form-control">
			<option value="">-  情報ソース  -</option>
			<la:option value="FILESERVER">ファイルサーバ</la:option>
			<la:option value="TEAMS">TEAMS</la:option>
			<la:option value="TERRA">TERRA</la:option>
		</la:select>
	</fieldset>

	<%--
	<fieldset class="form-group">
		<legend>情報ソース</legend>
		<label for="contentFilter">情報ソース</label>
		<la:select property="ft_sc" styleId="filterSearchOption" styleClass="form-control">
			<option value="">-  情報ソース  -</option>
			<la:option value="sc_fs">ファイルサーバ</la:option>
			<la:option value="sc_tm">TEAMS</la:option>
			<la:option value="sc_tr">TERRA</la:option>
		</la:select>
	</fieldset>
	 --%>

	<%-- FILTER FILESERVER --%>
	<fieldset class="form-group" id="filter-fileserver">
		<legend>ファイルサーバ</legend>
		<label for="contentFilter">ファイルサーバ</label>
		<select id="fileserverFilterSearchOption" class="form-control">
			<option value="">-  ファイルサーバ  -</option>
			<option value="FILESERVER_A">A_仕様関連</option>
			<option value="FILESERVER_B">B_基板関連</option>
			<option value="FILESERVER_C">C_HW関連</option>
			<option value="FILESERVER_D">D_CPLD_FPGA関連</option>
			<option value="FILESERVER_E">E_機構関連</option>
			<option value="FILESERVER_F">F_SW関連</option>
			<option value="FILESERVER_G">G_評価関連</option>
			<option value="FILESERVER_H">H_製造関連</option>
			<option value="FILESERVER_J">J_取扱説明書</option>
			<option value="FILESERVER_K">K_客先向け報告書</option>
			<option value="FILESERVER_L">L_プロジェクト管理</option>
			<option value="FILESERVER_M">M_記録・連絡</option>
		</select>
	</fieldset>

	<%-- FILTER TEAMS --%>
	<fieldset class="form-group" id="filter-teams">
		<legend>TEAMS</legend>
		<label for="contentFilter">TEAMS</label>
		<select id="teamsFilterSearchOption" class="form-control">
			<option value="">-  TEAMS  -</option>
			<option value="TEAMS_HW">技術HWキュレーション</option>
			<option value="TEAMS_SW">技術SWキュレーション</option>
			<option value="TEAMS_CM">技術共通キュレーション</option>
			<option value="TEAMS_CP">会社キュレーション</option>
		</select>
	</fieldset>

	<%-- FILTER TERRA --%>
	<fieldset class="form-group" id="filter-terra">
		<legend>TERRA</legend>
		<label for="contentFilter">TERRA</label>
		<select id="terraFilterSearchOption" class="form-control">
			<option value="">-  TERRA  -</option>
			<option value="TERRA_HW">ハードウェア関連</option>
			<option value="TERRA_SW">ソフトウェア関連</option>
			<option value="TERRA_SD">はんだ関連</option>
			<option value="TERRA_TB">トラブル関連</option>
			<option value="TERRA_EQ">計測器関連</option>
		</select>
	</fieldset>
	
	<%-- CONTENT NUMBER --%>
	<fieldset class="form-group">
		<legend><la:message key="labels.index_num" /></legend>
		<label for="contentNum"><la:message key="labels.index_num" /></label>
		<la:select property="num" styleId="numSearchOption"
			styleClass="form-control">
			<option value="10">
				<la:message key="labels.search_result_select_num" />
			</option>
			<la:option value="10">10</la:option>
			<la:option value="20">20</la:option>
			<la:option value="30">30</la:option>
			<la:option value="40">40</la:option>
			<la:option value="50">50</la:option>
			<la:option value="100">100</la:option>
		</la:select>
	</fieldset>
	<%-- SORT --%>
	<fieldset class="form-group">
		<legend><la:message key="labels.index_sort" /></legend>
		<label for="contentSort"><la:message key="labels.index_sort" /></label>
		<la:select property="sort" styleId="sortSearchOption"
			styleClass="form-control">
			<option value="">
				<la:message key="labels.search_result_select_sort" />
			</option>
			<la:option value="score.desc">
				<la:message key="labels.search_result_sort_score_desc" />
			</la:option>
			<la:option value="filename.asc">
				<la:message key="labels.search_result_sort_filename_asc" />
			</la:option>
			<la:option value="filename.desc">
				<la:message key="labels.search_result_sort_filename_desc" />
			</la:option>
			<la:option value="created.asc">
				<la:message key="labels.search_result_sort_created_asc" />
			</la:option>
			<la:option value="created.desc">
				<la:message key="labels.search_result_sort_created_desc" />
			</la:option>
			<la:option value="content_length.asc">
				<la:message key="labels.search_result_sort_content_length_asc" />
			</la:option>
			<la:option value="content_length.desc">
				<la:message key="labels.search_result_sort_content_length_desc" />
			</la:option>
			<la:option value="last_modified.asc">
				<la:message key="labels.search_result_sort_last_modified_asc" />
			</la:option>
			<la:option value="last_modified.desc">
				<la:message key="labels.search_result_sort_last_modified_desc" />
			</la:option>
			<c:if test="${searchLogSupport}">
				<la:option value="click_count.asc">
					<la:message key="labels.search_result_sort_click_count_asc" />
				</la:option>
				<la:option value="click_count.desc">
					<la:message key="labels.search_result_sort_click_count_desc" />
				</la:option>
			</c:if>
			<c:if test="${favoriteSupport}">
				<la:option value="favorite_count.asc">
					<la:message key="labels.search_result_sort_favorite_count_asc" />
				</la:option>
				<la:option value="favorite_count.desc">
					<la:message key="labels.search_result_sort_favorite_count_desc" />
				</la:option>
			</c:if>
		</la:select>
	</fieldset>
	<%-- LANGUAGE --%>
	<fieldset class="form-group">
		<legend><la:message key="labels.index_lang" /></legend>
		<label for="contentLang"><la:message key="labels.index_lang" /></label>
		<la:select property="lang" styleId="langSearchOption" multiple="true"
			styleClass="form-control">
			<c:forEach var="item" items="${langItems}">
				<la:option value="${f:u(item.value)}">${f:h(item.label)}</la:option>
			</c:forEach>
		</la:select>
	</fieldset>
	<%-- LABEL --%>
	<%--
	<c:if test="${displayLabelTypeItems}">
		<fieldset class="form-group">
			<legend><la:message key="labels.index_label" /></legend>
			<label for="contentLabelType"><la:message
					key="labels.index_label" /></label>
			<la:select property="fields.label" styleId="labelTypeSearchOption"
				multiple="true" styleClass="form-control">
				<c:forEach var="item" items="${labelTypeItems}">
					<la:option value="${f:u(item.value)}">${f:h(item.label)}</la:option>
				</c:forEach>
			</la:select>
		</fieldset>
	</c:if>
	 --%>
</div>
