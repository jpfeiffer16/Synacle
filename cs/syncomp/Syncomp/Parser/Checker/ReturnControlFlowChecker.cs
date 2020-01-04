namespace syncomp
{
    public class ReturnControlFlowChecker
    {
        private readonly FunctionDeclaration _declaration;

        public ReturnControlFlowChecker(FunctionDeclaration declaration)
        {
            this._declaration = declaration;
        }
        // Rules are really simple right now since we don't have a concpt of 'else'
        // yet.

        /* RULES:
         * If no root return, fail. Void is an exception
         */
        public bool Check()
        {
            if (_declaration.ReturnType.Equals(ParserContext.NativeTypes.LangVoid))
                return true;
            foreach (var node in this._declaration.Expression)
            {
                if (node is Return ret && ret.NodeType.Equals(_declaration.ReturnType))
                {
                    return true;
                }
            }

            return false;
        }
    }
}
