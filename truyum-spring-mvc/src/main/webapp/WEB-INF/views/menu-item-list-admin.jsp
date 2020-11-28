<%@ include file="common/taglibs-and-head.jspf"%>
<div class="container-my">
	<%@ include file="common/header.jspf"%>
    <div class="body">
        <h1 class="body-text-heading" id="">Menu Items</h1>
        <div id="menu-Item-List-Result">
        	<table>
        		<tr>
        			<th>Name</th>
        			<th>Price</th>
        			<th>Active</th>
        			<th>Date of launch</th>
        			<th>Category</th>
        			<th>Free Delivery</th>
        			<th></th>
        		</tr>
        		<c:forEach var="item" items="${menuItemListAdmin}">
        			<tr>
        				<td>${item.name}</td>
        				<td>${item.price}</td>
        				<td>${item.active}</td>
        				<td>${item.dateOfLaunch}</td>
        				<td>${item.category}</td>
        				<td>${item.freeDelivery}</td>
        				<td><a href="/show-edit-menu-item?menuItemId=${item.id}">Edit</a></td>
        			</tr>
        		
        		</c:forEach>
        	</table>
        </div>
    </div>
  <%@ include file="common/footer.jspf"%>
</div>
<%@ include file="common/end-tags.jspf"%>