assert = require 'power-assert'
sinon = require 'sinon'

describe 'fact', ->

  beforeEach ->
    @sinon = sinon.sandbox.create()
    @robot =
      respond: @sinon.spy()
    require('../../src/scripts/fact')(@robot)

  afterEach ->
    @sinon.restore()

  describe 'registers listeners', ->

    it 'registers a respond listener', ->
      assert.ok(@robot.respond.calledWith(/fact\s+(\d+)$/))

  describe 'fact(-1)', ->

    beforeEach ->
      @send = @sinon.spy()
      @robot.respond.args[0][1]
        match: [null, '-1']
        send: @send

    it 'send "N >= 0"', ->
      assert.ok(@send.calledWith('N >= 0'))

  describe 'fact(0)', ->

    beforeEach ->
      @send = @sinon.spy()
      @robot.respond.args[0][1]
        match: [null, '0']
        send: @send

    it 'send "0! = 1"', ->
      assert.ok(@send.calledWith('0! = 1'))

  describe 'fact(1)', ->

    beforeEach ->
      @send = @sinon.spy()
      @robot.respond.args[0][1]
        match: [null, '1']
        send: @send

    it 'send "1! = 1"', ->
      assert.ok(@send.calledWith('1! = 1'))

  describe 'fact(3)', ->

    beforeEach ->
      @send = @sinon.spy()
      @robot.respond.args[0][1]
        match: [null, '3']
        send: @send

    it 'send "3! = 6"', ->
      assert.ok(@send.calledWith('3! = 6'))
