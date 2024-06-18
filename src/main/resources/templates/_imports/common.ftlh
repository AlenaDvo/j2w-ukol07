[#ftl]

[#macro page title="Alena Dvořáková's Blog"]
    <!doctype html>
    <html lang="cs">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <br><br>
        <title>${title}</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="icon" href="/images/favicon.png" type="image/png">
    <body>
    <div class="container">
        [#nested]
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </head>
    </body>
    </html>
[/#macro]

[#macro pager]
    <div class="pager">
        [@pagerLink page=0 active=false text="⇤" /]
        [@pagerLink page=posts.number - 1 active=posts.first text="←" /]
        [#list (0..!posts.totalPages) as pageNumber]
            [@pagerLink page=pageNumber active=pageNumber==posts.number text=pageNumber + 1 /]
        [/#list]
        [@pagerLink page=posts.number + 1 active=posts.last text="→" /]
        [@pagerLink page=posts.totalPages - 1 active=false text="⇥" /]
    </div>
[/#macro]

[#macro pagerLink page text active]
    [#if active]
        <span class="page active">${text}</span>
    [#else ]
        <a href="${createURL({"size": posts.size, "page": page})}" class="page">${text}</a>
    [/#if]
[/#macro]

[#macro back]
    <nav>
        <button class="btn btn-light"><a href="/">◂ back to list</a></button>
    </nav>
[/#macro]
