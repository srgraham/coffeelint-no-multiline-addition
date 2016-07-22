module.exports = class
  rule:
    name: 'no_multiline_addition'
    level: 'error'
    message: 'Line contains multiline addition. Swap to heredoc'
    regexList: []
    description: '''
      '''

  lintLine: (line, api) ->
    re = /\+\s*$/g
    if re.test(line)
      return true
