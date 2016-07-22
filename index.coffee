
module.exports = class
  rule:
    name: 'no_multiline_addition'
    level: 'error'
    message: 'Line contains multiline addition. Swap to heredoc'
    description: '''
      Check for addition that uses multiple lines. Use something like heredocs instead.
    '''
    
  tokens: ['+']

  lintToken: (token, token_api) ->
    if token.newLine
      return true
