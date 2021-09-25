from django.test import SimpleTestCase


class TestForms(SimpleTestCase):

    """
    Guideline to create simple testcases for forms

    # simple validation form with data
    def test_form_validation_data(self):
        form = SampleForm(data={
            'name': 'ali',
            'age', 28
        })
        self.assertTrue(form.is_valid())

    # simple validation form with No data
    def test_form_validation_without_data(self):
        form = SampleForm(data={})
        self.assertFalse(form.is_valid())
        self.assertEquals(len(form.errors),3)
    """

    pass
