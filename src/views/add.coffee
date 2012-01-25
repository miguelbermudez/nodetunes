form action: "/add", method: "post", ->
    if @form.valid is false
        div class: "alert-message block-message error", ->
            p "Errors have been encountered; please fix the field values highlighted in red."
    fieldset ->
        legend @title
        div class: "clearfix" + (if @form.errors.title? then " error" else ""), ->
            label for: "title", -> "Title"
            div class: "input", ->
                input
                    type:  "text"
                    class: "xlarge"
                    name:  "fortune[title]"
                    id:    "title"
                    placeholder: "A funny one"
                    value: @form.values.title
                if @form.errors.title
                    span class: "help-block", -> @form.errors.title
        div class: "clearfix" + (if @form.errors.content? then " error" else "") , ->
            label for: "content", -> "Content"
            div class: "input", ->
                textarea class: "xxlarge", name: "fortune[content]", id: "content", placeholder: "<john> Booh", ->
                    @form.values.content
                # span class: "help-block", ->
                #     "Paste your quote using the following format"
                if @form.errors.content
                    span class: "help-block", -> @form.errors.content
        div class: "actions", ->
            button type: "submit", class: "btn primary", -> "Submit"