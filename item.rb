class Item
    attr_writter :text, :checked

    def initialize(text="")
        @text = text
        @checked = false
    end

    def to_s
        if @checked
            "[x]" + @text
        else
            "[ ]" + @text
        end
    end
    
end