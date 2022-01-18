from behave import *
from src.sample.FizzBuzz import FizzBuzz

use_step_matcher('re')

@given("we have a FizzBuzz")
def step_impl(context):
    context.f = 'xd'

@when('the given number is (?P<number>.+)')
def step_impl(context, number):
    context.result = FizzBuzz().game(int(number))

@then('the result is (?P<result>.+)')
def step_impl(context, result):
    assert context.result == result