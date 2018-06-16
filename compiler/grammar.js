module.exports = {
  tokens: [
    {
      token: '{',
      name: 'left-bracket'
    },
    {
      token: '}',
      name: 'right-bracket'
    },
    {
      token: '(',
      name: 'left-paren'
    },
    {
      token: ')',
      name: 'right-paren'
    },
    {
      token: ';',
      name: 'semi-colon'
    },
    {
      token: '+',
      name: 'plus'
    },
    {
      token: '-',
      name: 'minus'
    },
    {
      token: '=',
      name: 'equals'
    },
    {
      token: 'while',
      name: 'while'
    },
    {
      token: 'true',
      name: 'bool-true'
    },
    {
      token: 'false',
      name: 'bool-false'
    },
    {
      token: 'break',
      name: 'break'
    },
    {
      token: 'var',
      name: 'variable_declaration'
    }
  ],
  nodes: [
    {
      name: 'function',
      composition: [
        'identifier',
        'left-paren',
        'right-paren',
        'left-bracket',
        'expression',
        'right-bracket'
      ]
    }
  ]
}