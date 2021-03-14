package token

func ToString(tt TokenType) string {
	switch tt {
	case Space:
		return "<space>"
	case Space2:
		return "<space2>"
	case Tab:
		return "<tab>"
	case Newline:
		return "<newline>"
	case Newline2:
		return "<newline2>"
	case MathSmallSpace:
		return "<mathSmallSpace>"
	case MathLargeSpace:
		return "<mathLargeSpace>"
	case Integer:
		return "<integer>"
	case Float:
		return "<float>"
	case MainString:
		return "<mainString>"
	case LatexFunction:
		return "<ltxFunction>"
	case RawLatex:
		return "<rawLatex>"
	case Docclass:
		return "<docclass>"
	case Import:
		return "<import>"
	case Document:
		return "<document>"
	case Begenv:
		return "<begenv>"
	case Endenv:
		return "<endenv>"
	case Mtxt:
		return "<mtxt>"
	case Etxt:
		return "<etxt>"
	case Plus:
		return "+"
	case Minus:
		return "-"
	case Star:
		return "*"
	case Slash:
		return "/"
	case Equal:
		return "="
	case Less:
		return "<"
	case Great:
		return ">"
	case LessEq:
		return "<="
	case GreatEq:
		return ">="
	case Bang:
		return "!"
	case Question:
		return "?"
	case Dollar:
		return "$"
	case Sharp:
		return "#"
	case FntParam:
		return "\\?"
	case At:
		return "@"
	case Percent:
		return "%"
	case LatexComment:
		return "<ltxComment>"
	case Superscript:
		return "^"
	case Subscript:
		return "_"
	case Ampersand:
		return "&"
	case BackSlash:
		return "\\\\"
	case SingleBackSlash:
		return "\\"
	case Vert:
		return "|"
	case Period:
		return "."
	case Comma:
		return ","
	case Colon:
		return ":"
	case Semicolon:
		return ";"
	case Tilde:
		return "~"
	case Quote:
		return "'"
	case Quote2:
		return "`"
	case Doublequote:
		return "\""
	case Lparen:
		return "("
	case Rparen:
		return ")"
	case Lbrace:
		return "{"
	case Rbrace:
		return "}"
	case Lsqbrace:
		return "["
	case Rsqbrace:
		return "]"
	case MathLbrace:
		return "\\{"
	case MathRbrace:
		return "\\}"
	case TextMathStart:
		return "<textMathStart>"
	case TextMathEnd:
		return "<textMathEnd>"
	case InlineMathStart:
		return "<inlineMathStart>"
	case InlineMathEnd:
		return "<inlineMathEnd>"
	case ArgSpliter:
		return "\\;"
	case EOF:
		return "<EOF>"
	case ILLEGAL:
		return "<ILLIGAL>"
	default:
		return ""
	}
}