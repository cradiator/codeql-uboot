
import cpp

from MacroInvocation invocation
where invocation.getMacroName() in ["ntohs", "ntohl", "ntohll"]
select invocation.getExpr()
