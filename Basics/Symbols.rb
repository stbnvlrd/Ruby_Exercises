#### Creating symbols ####

:my_symbol

#### Symbols vs. Strings ####

"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true

