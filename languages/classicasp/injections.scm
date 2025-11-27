(script_block
	code: (scriptlet_content) @injection.content
	(#set! injection.language "VBScript"))

(script_output
	code: (scriptlet_content) @injection.content
	(#set! injection.language "VBScript"))

(script_tag
	start: (script_start_tag
		(name)
		(_)*
		(script_attribute
			name: (attribute_name) @attr_name
			value: (attribute_value) @attr_value)
		(_)* )
	body: (script_body) @injection.content
	(#match? @attr_name "(?i)^(language|type)$")
	(#match? @attr_value "(?i)^['\"]?(vbscript|text/vbscript|application/vbscript)['\"]?$")
	(#set! injection.language "VBScript"))

(script_tag
	start: (script_start_tag
		(name)
		(_)*
		(script_attribute
			name: (attribute_name) @runat_name
			value: (attribute_value) @runat_value)
		(_)* )
	body: (script_body) @injection.content
	(#match? @runat_name "(?i)^runat$")
	(#match? @runat_value "(?i)^['\"]?server['\"]?$")
	(#set! injection.language "VBScript"))

(script_tag
	start: (script_start_tag
		(name)
		(_)*
		(script_attribute
			name: (attribute_name) @attr_name
			value: (attribute_value) @attr_value)
		(_)* )
	body: (script_body) @injection.content
	(#match? @attr_name "(?i)^(language|type)$")
	(#match? @attr_value "(?i)^['\"]?(javascript|jscript|ecmascript|text/(?:javascript|ecmascript)|application/(?:javascript|ecmascript))['\"]?(;.*)?$")
	(#set! injection.language "JavaScript"))

(script_tag
	start: (script_start_tag) @start
	body: (script_body) @injection.content
	(#match? @start "(?i)^<script\s*>$")
	(#set! injection.language "JavaScript"))
