LEXEMES = { #values here are regexp
    :L_LEVEL_1_HEADER => [/^#(?= )/, 0],
    :L_LEVEL_2_HEADER => [/^##(?= )/, 0],
    :L_LEVEL_3_HEADER => [/^###(?= )/, 0],
    :L_LEVEL_4_HEADER => [/^####(?= )/, 0],
    :L_LINK_TEXT => [/\[.*\](?=\()/, 2],
    :L_PARENS_URL=> [/\(.*\)(?<!\] )/, 2],
    :L_LEFT_SQUARE_BRACKET => [/\[/, 2],
    :L_RIGHT_SQUARE_BRACKET => [/\]/, 2],
    :L_LEFT_PAREN => [/\((?<=\])/, 2],
    :L_RIGHT_PAREN => [/\)(?<=\])/, 2],
    :L_HYPHEN => [/-/, 0],
    :L_UNDERSCORE => [/_(?!_)/, 1],
    :L_PARAGRAPH => [/[^a-zA-Z\n]/, 1],
    :L_ASTERISK => [/\*/, 2],
    :L_DOUBLE_ASTERISK => [/\*\*/, 2],
    :L_DOUBLE_UNDESCORE => [/__/, 2],
    :L_LINEENDING => [/\n/, 0],
}
