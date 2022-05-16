<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
		<%-- by kim 2022-04-27 --%>
		<div class="custom-control custom-switch">
		  <input type="checkbox" class="custom-control-input" id="groupshow">
		  <label class="custom-control-label" for="groupshow">グループ表示</label>
		</div>
		<div class="spacer"></div>

		<b>共通フィルタ</b>
		<ul class="list-group result-list-group">
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=SiC&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					SiC 
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=GaN&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					GaN
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=MOSFET&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					MOSFET
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=モジュール&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					モジュール
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=DAB&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					DAB
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=三相インバータ&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					三相インバータ
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=PFC回路&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					PFC回路
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=単相インバータ&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					単相インバータ
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=DCDCコンバータ&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					DCDCコンバータ
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=蓄電システム&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					蓄電システム
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=PFC電源&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					PFC電源
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=スイッチング電源&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					スイッチング電源
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=パワーコンディショナー&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					パワーコンディショナー
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=系統連系インバータ&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					系統連系インバータ
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=非接触給電&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					非接触給電
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=12V&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					12V
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=24V&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					24V
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=48V&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					48V
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=360V&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					360V
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=500V&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					500V
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=800V&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					800V
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=1200V&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					1200V
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=10A&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					10A
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=30A&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					30A
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=50A&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					50A
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=200A&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					200A
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=10kHz&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					10kHz
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=100kHz&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					100kHz
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link
					href="/search?q=${f:u(q)}&ft_cm=1MHz&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					1MHz
				</la:link>
			</li>
		</ul>
		<div class="spacer"></div>

		<b>情報ソース</b>
		<ul class="list-group mb-2">
			<li class="list-group-item py-0">
				<la:link id="fileserver"
					href="/search?q=${f:u(q)}&ft_sc=ファイルサーバ&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					ファイルサーバ 
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="teams"
					href="/search?q=${f:u(q)}&ft_sc=TEAMS&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					TEAMS
				</la:link>
			</li>
			<li class="list-group-item py-0">
				<la:link id="terra"
					href="/search?q=${f:u(q)}&ft_sc=TERRA&sdh=${f:u(fe:sdh(sh))}${fe:pagingQuery(null)}${fe:facetQuery()}${fe:geoQuery()}">
					TERRA
				</la:link>
			</li>
		</ul>
		<div class="spacer"></div>

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






