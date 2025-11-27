(text_fragment) @text.literal

"<%" @punctuation.special
"<%=" @punctuation.special
"%>" @punctuation.special

(script_start_tag
	(name) @tag
	(script_attribute
		name: (attribute_name) @property
		value: (attribute_value) @string))

(script_end_tag
	(name) @tag)
