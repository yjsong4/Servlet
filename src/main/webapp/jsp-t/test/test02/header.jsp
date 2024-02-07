<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex">
			<div class="d-flex align-items-center">
				<h1 class="ml-3 mr-5 text-success logo">Melong</h1>
			</div>
			
			<div class="search d-flex align-items-center">
				<form method="get" action="/jsp-t/test/test02/test02-info.jsp" class="col-5">
					<div class="input-group">
						<input type="text" class="form-control" name="title">
						<div class="input-group-append">
							<button class="btn btn-success" type="submit">검색</button>				
						</div>
					</div>
				</form>
			</div>
		</header>