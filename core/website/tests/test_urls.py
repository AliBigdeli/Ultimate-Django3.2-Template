from django.test import SimpleTestCase
from django.urls import reverse, resolve
from website.views import index_view


class TestUrls(SimpleTestCase):
    """
    Simple TestCase for urls in the application

    # if using FBV you can check the request like this
    def test_index_view_resolve(self):
        url = reverse('app:name')
        self.assertEquals(resolve(url).func, function_view_name)

    # if using FBV you can check the request like this + args
    def test_function_view_resolve(self):
        url = reverse('app:name',args=['something'])
        self.assertEquals(resolve(url).func,function_view_name)

    # if using CBV you can check the request like this
    def test_class_based_view_resolved(self):
        url = reverse('app:name')
        self.assertEquals(resolve(url).func.view_class,ClassViewName)
    """

    # if using FBV you can check the request like this
    def test_index_view_resolve(self):
        url = reverse("website:index")
        self.assertEquals(resolve(url).func, index_view)
