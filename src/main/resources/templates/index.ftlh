[#ftl]

[@c.page title="Alena Dvořáková's Blog"]
    <br><br>
    <h1 class="display-5 fw-bold text-body-emphasis">Welcome to my blog!</h1><br><br>

    <h2>I hope you will enjoy my personal thoughts :)</h2><br><br>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Title</th>
            <th scope="col">Date</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list posts as post]
            <tr>
                <td>${post.title}</td>
                <td>${post.getPublished()?date}</td>
                <td>
                    <a href="/${post.slug}">
                        <i class="bi bi-arrow-right-square-fill"></i>
                    </a>
                </td>
            </tr>
        [/#list]
        </tbody>
    </table>
[/@c.page]