import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        exists(MacroInvocation invocation | 
            invocation.getMacroName() in ["ntohs", "ntohl", "ntohll"] and
            invocation.getExpr() = this
        )
    }
}

from NetworkByteSwap n select n
