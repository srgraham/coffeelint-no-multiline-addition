
module.exports = class
  rule:
    name: 'no_multiline_addition'
    level: 'error'
    message: 'Line contains multiline addition. Swap to heredoc'
    regexList: []
    description: '''
      '''
    
  tokens: ['+']

  prev_token: null

  lintToken: (token, token_api) ->
    if token.newLine
      return true
