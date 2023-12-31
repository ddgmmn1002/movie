<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post list</title>
</head>
<body class="bg-dark">
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container p-4 mt-5 mb-5 bg-light rounded">
		<div class="row">
			<div class="col">
				<core:if test="${not empty userInfo }">
					<core:if test="${!userInfo.isBlocked() }">
						<div class="d-flex mb-3 justify-content-end">
							<a class="btn btn-primary" href="prepareInsertPost">게시글 작성</a>
						</div>
					</core:if>
				</core:if>			
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table class="table table-hover align-middle bg-white">
					<thead>
						<tr class="table-dark shadow-sm p-3 mb-1">
							<td style="width:5%;">번호</td>
							<td style="width:20%;">작성자</td>
							<td style="width:50%;">제목</td>
							<td style="width:15%;">작성일</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<core:forEach var="post" items="${list}">
							<core:choose>
								<core:when test="${post.getBlocked() }">
									<tr class="shadow-sm" id="post${post.getPno() }" onclick="postIsClicked(${post.getPno()})">
										<td></td>
										<td></td>
										<td class="text-secondary">차단된  게시글입니다.</td>
										<td><td>
											<div class="d-grid justify-content-end me-1">									
												<div class="d-flex align-items-center gap-1"></div>
												<div class="d-flex align-items-center gap-1"></div>
												<div class="d-flex align-items-center gap-1"></div>
											</div>			
										</td>
									</tr>
								</core:when>
								<core:otherwise>
									<tr class="shadow-sm" id="post${post.getPno() }" onclick="postIsClicked(${post.getPno()})">
										<td>${post.getPno()}</td>
										<td>
											${post.getNickname() }
											<core:choose>
												<core:when test='${post.getGrade() == "admin"}'>
													<span class="badge rounded-pill bg-primary">관리자</span>
												</core:when>
												<core:when test='${post.getGrade() == "critic"}'>
													<span class="badge rounded-pill bg-success">평론가</span>
												</core:when>
											</core:choose>
										</td>
										<td>
											<core:if test="${post.getVno() ne 19 }">
												<span class="badge bg-dark">${post.getVideoTitle() }</span>
											</core:if>
											${post.getTitle() }
										</td>
										<core:choose>
											<core:when test="${not empty post.getUpdatedAt()}">
												<td>${post.getUpdatedAt() } <span class="badge bg-secondary">수정됨</span></td>
											</core:when>
											<core:otherwise>
												<td>${post.getCreatedAt() }</td>						
											</core:otherwise>
										</core:choose>
										<td>
											<div class="d-grid justify-content-end me-1">									
												<div class="d-flex align-items-center gap-1">
													<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
								  						<path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
								  						<path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
													</svg>
													<div>
														${post.getViewCount() }
													</div>
												</div>
												<div class="d-flex align-items-center gap-1">
													<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-right-text-fill" viewBox="0 0 16 16">
						  								<path d="M16 2a2 2 0 0 0-2-2H2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h9.586a1 1 0 0 1 .707.293l2.853 2.853a.5.5 0 0 0 .854-.353V2zM3.5 3h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1 0-1zm0 2.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1 0-1zm0 2.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1z"/>
													</svg>
													<div>
														${post.getCommentCount() }
													</div>
												</div>
												<div class="d-flex align-items-center gap-1">
													<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
						  								<path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
													</svg>
													<div>
														${post.getLikeCount() }
													</div>
												</div>
											</div>			
										</td>
									</tr>
								</core:otherwise>								
							</core:choose>
							
						</core:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<nav>
					<ul class="pagination justify-content-center">
						<li class="page-item">
							<core:choose>
								<core:when test="${paging.getCurrentPage() <= 1 }">
									<a class="page-link disabled" href="postList?page=${paging.getCurrentPage() - 1 }" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</core:when>
								<core:otherwise>
									<a class="page-link" href="postList?page=${paging.getCurrentPage() - 1 }" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</core:otherwise>
							</core:choose>
						</li>
						<core:forEach var="page" begin="${paging.getStartPage() }" end="${paging.getEndPage() }">
							<core:choose>
								<core:when test="${paging.getCurrentPage() == page }">
									<li class="page-item active">
										<a class="page-link" href="postList?page=${page }">${page }</a>
									</li>
								</core:when>
								<core:otherwise>
									<li class="page-item">
										<a class="page-link" href="postList?page=${page }">${page }</a>
									</li>
								</core:otherwise>
							</core:choose>
						</core:forEach>
						<li class="page-item">
							<core:choose>
								<core:when test="${paging.getCurrentPage() >= paging.getTotalPage() }">
									<a class='page-link disabled' href="postList?page=${paging.getCurrentPage() + 1 }" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</core:when>
								<core:otherwise>
									<a class='page-link' href="postList?page=${paging.getCurrentPage() + 1 }" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</core:otherwise>
							</core:choose>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
<script>
 	function postIsClicked(pno){
		location.href = "postDetail?pno=" + pno;
	}
</script>
</body>
</html>

