[#ftl]
[@c.page title="Alena Dvořáková's Blog"]
    <br><br>
    <h1 class="display-5 fw-bold text-body-emphasis">Welcome to my blog!</h1><br><br>
    <h2>${post.title}</h2><br>
    <h3>${post.perex?no_esc}</h3><br>
    <h5>${post.author} on ${post.published?date}</h5><br>
    <p>${post.body?no_esc}</p><br><br>
    [@c.back /]
[/@c.page]