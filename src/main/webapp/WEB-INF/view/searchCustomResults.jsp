<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
		<%-- by kim 2022-04-27 --%>
		<div class="custom-control custom-switch">
		  <input type="checkbox" class="custom-control-input" id="groupshow">
		  <label class="custom-control-label" for="groupshow">グループ表示</label>
		</div>
		<div class="spacer"></div>


		<form action="/search/" name="side_filter" method="get">
			<input type="hidden" name="common_filter" value="${common_filter}">
			<input type="hidden" name="source_filter" value="${source_filter}">
			<input type="hidden" name="ex_q" value="${source_filter}">
			<input type="hidden" name="fileserver_filter" value="${fileserver_filter}">
			<input type="hidden" name="teams_filter" value="${teams_filter}">
			<input type="hidden" name="terra_filter" value="${terra_filter}">
		</form>

		<ul class="list-group">
			<li class="list-group-item py-1">
				共通フィルタ
			</li>
		</ul>
		<ul class="list-group result-list-group">
			<c:forEach var="common" items="${Common}">
			<li class="list-group-item py-1">
				<a href="javascript:void(0)" onclick="javascript:doSearch1('?q=${f:u(q)}&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}', '${common.key}');">
					${common.name}
				</a>
			</li>
			</c:forEach>
		</ul>
		

		<div class="spacer"></div>
		<ul class="list-group mb-2">
			<li class="list-group-item py-1">
				 情報ソース
			</li>
			<c:forEach var="source" items="${Source}">
			<li class="list-group-item py-1">
				<a href="javascript:void(0)" onclick="doSearch2('?q=${f:u(q)}&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}', '${source.key}');">
					${source.name}
				</a>
			</li>
			</c:forEach>
		</ul>
		<div class="spacer"></div>

		<%-- FILESERVER --%>
		<c:forEach var="fieldData" items="${facetResponse.fieldList}">
			<c:if test="${fieldData.name == 'label' && fieldData.valueCountMap.size() > 0}">
				<ul class="list-group mb-2" id="filter-fileserver">
					<li class="list-group-item py-1">ファイルサーバ</li>
					<c:forEach var="countEntry" items="${fieldData.valueCountMap}">
						<c:if test="${countEntry.value != 0 && fe:labelexists(countEntry.key) && fn:startsWith(countEntry.key, 'FILESERVER_')}">
							<li class="list-group-item py-1">
								<a href="javascript:void(0)"
									onclick="doSearch3('?q=${f:u(q)}&fields.label=${f:u(countEntry.key)}&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}&source_filter=FILESERVER', '${countEntry.key}');">
									${f:h(fe:label(countEntry.key))} 
									<span class="badge badge-secondary badge-pill float-right">${f:h(countEntry.value)}</span>
								</a>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</c:if>
		</c:forEach>

		<%-- TEAMS --%>
		<c:forEach var="fieldData" items="${facetResponse.fieldList}">
			<c:if test="${fieldData.name == 'label' && fieldData.valueCountMap.size() > 0}">
				<ul class="list-group mb-2" id="filter-teams">
					<li class="list-group-item py-1 text-uppercase">TEAMS</li>
					<c:forEach var="countEntry" items="${fieldData.valueCountMap}">
						<c:if test="${countEntry.value != 0 && fe:labelexists(countEntry.key) && fn:startsWith(countEntry.key, 'TEAMS_')}">
							<li class="list-group-item py-1">
								<a href="javascript:void(0)"
									onclick="doSearch4('?q=${f:u(q)}&fields.label=${f:u(countEntry.key)}&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}&source_filter=TEAMS', '${countEntry.key}');">
									${f:h(fe:label(countEntry.key))} 
									<span class="badge badge-secondary badge-pill float-right">${f:h(countEntry.value)}</span>
								</a>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</c:if>
		</c:forEach>

		<%-- TERRA --%>
		<c:forEach var="fieldData" items="${facetResponse.fieldList}">
			<c:if test="${fieldData.name == 'label' && fieldData.valueCountMap.size() > 0}">
				<ul class="list-group mb-2" id="filter-terra">
					<li class="list-group-item py-1 text-uppercase">TERRA</li>
					<c:forEach var="countEntry" items="${fieldData.valueCountMap}">
						<c:if test="${countEntry.value != 0 && fe:labelexists(countEntry.key) && fn:startsWith(countEntry.key, 'TERRA_')}">
							<li class="list-group-item py-1">
								<a href="javascript:void(0)"
									onclick="doSearch5('?q=${f:u(q)}&fields.label=${f:u(countEntry.key)}&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}&source_filter=TERRA', '${countEntry.key}');">
									${f:h(fe:label(countEntry.key))} 
									<span class="badge badge-secondary badge-pill float-right">${f:h(countEntry.value)}</span>
								</a>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</c:if>
		</c:forEach>
	
		<%--
		<b>ファイルサーバフィルタ</b>
		<ul class="list-group mb-2 result-list-group">
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=A_仕様関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					A_仕様関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=B_基板関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					B_基板関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=C_HW関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					C_HW関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=D_CPLD_FPGA関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					D_CPLD_FPGA関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=E_機構関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					E_機構関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=F_SW関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					F_SW関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=G_評価関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					G_評価関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=H_製造関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					H_製造関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=J_取扱説明書&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					J_取扱説明書
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=K_客先向け報告書&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					K_客先向け報告書
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=L_プロジェクト管理&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					L_プロジェクト管理
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_fs=M_記録・連絡&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					M_記録・連絡
				</la:link>
			</li>
		</ul>
		<div class="spacer"></div>

		<b>TEAMSフィルタ</b>
		<ul class="list-group mb-2">
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tm=技術HWキュレーション&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					技術HWキュレーション
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tm=技術SWキュレーション&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					技術SWキュレーション
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tm=技術共通キュレーション&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					技術共通キュレーション
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tm=会社キュレーション&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					会社キュレーション
				</la:link>
			</li>
		</ul>
		<div class="spacer"></div>


		<b>TERRAフィルタ</b>
		<ul class="list-group mb-2">
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tr=ハードウェア関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					ハードウェア関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tr=ソフトウェア関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					ソフトウェア関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tr=はんだ関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					はんだ関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tr=トラブル関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					トラブル関連
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_tr=計測器関連&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					計測器関連
				</la:link>
			</li>
		</ul>
		<div class="spacer"></div>
		--%>


