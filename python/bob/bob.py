class WhateverResponse(object):
  @staticmethod
  def answers(message):
    return True

  @staticmethod
  def response():
    return 'Whatever.'

class ShoutResponse(object):
  @staticmethod
  def answers(message):
    return message == message.upper()

  @staticmethod
  def response():
    return 'Woah, chill out!'

class QuestionResponse(object):
  @staticmethod
  def answers(message):
    return message.endswith('?')

  @staticmethod
  def response():
    return 'Sure.'

class SilenceResponse(object):
  @staticmethod
  def answers(message):
    return (message or '').strip() == ''

  @staticmethod
  def response():
    return 'Fine. Be that way!'

class Responder(object):
  responders = [SilenceResponse, ShoutResponse, QuestionResponse, WhateverResponse]

  def respond_to(self, message):
    for responder in self.responders:
      if responder.answers(message):
        return responder.response()

class Bob(object):
  def hey(self, message, responder=Responder()):
    return responder.respond_to(message)
