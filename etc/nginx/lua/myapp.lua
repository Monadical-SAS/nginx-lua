local template = require("resty.template")
local template_string = ngx.location.capture("/templates/greet.html")
template.render(template_string.body, {
    param1 = ngx.req.get_uri_args()["param1"],
    param2 = ngx.req.get_uri_args()["param2"]
})
