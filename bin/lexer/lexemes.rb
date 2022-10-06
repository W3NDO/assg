LEXEMES = { #values here are regexp
    :L_LEVEL_1_HEADER => /^#(?= )/,
    :L_LEVEL_2_HEADER => /^##(?= )/,
    :L_LEVEL_3_HEADER => /^###(?= )/,
    :L_LEVEL_4_HEADER => /^####(?= )/,
    :L_LEFT_SQUARE_BRACKET => /\[/,
    :L_RIGHT_SQUARE_BRACKET => /\]/,
    :L_LEFT_PAREN => /\(/,
    :L_RIGHT_PAREN => /\)/,
    :L_HYPHEN => /-/,
    :L_UNDERSCORE => /_(?!_)/,
    :L_DIGITS => /[0-9]/,
    :L_ALPHABET => /[a-zA-Z]/,
    :L_ASTERISK => /\*/,
    :L_DOUBLE_ASTERISK => /\*\*/,
    :L_DOUBLE_UNDESCORE => /__/,
    :L_LINEENDING => /\n/
}

