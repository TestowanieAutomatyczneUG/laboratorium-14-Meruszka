from behave import *
from src.ISBN import *
from assertpy import *

use_step_matcher('re')

@given("we have a ISBN gen")
def step_impl(context):
    context.f = 'xd'

@when('the given number is (?P<number>.+)')
def step_impl(context, number):
    context.result = genISBN(number)

@then('the result is (?P<result>.+)')
def step_impl(context, result):
    assert_that(context.result).is_equal_to(result)
    