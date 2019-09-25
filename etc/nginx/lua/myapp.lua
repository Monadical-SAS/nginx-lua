local template = require("resty.template")
local template_string = ngx.location.capture("/trade.html")
template.render(template_string.body, {
    id = ngx.req.get_uri_args()["id"]
})
