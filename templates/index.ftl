<#include "header.ftl">

	<#include "menu.ftl">

	<div class="page-header">
		<h1>${config.content_title}</h1>
		<h3 style="italic;">
			This is a space about technology: how it makes us better and how it makes us suffer
		</h3>

		<a href="https://xkcd.com/237/"><div id="home-image">&nbsp;</div></a>

		<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  			<p>${post.preamble!}</p>
  		</#if>
  	</#list>

	<hr />

<#include "footer.ftl">
