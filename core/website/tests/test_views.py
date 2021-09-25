from django.test import TestCase, Client
from django.urls import reverse

# import json


class TestViews(TestCase):
    """
    Guidline to create testcases for views response and database

    # function to setup everything before testing included functions
     def setUp(self):
        self.client = Client()
        ModelClass.objects.create(
            key = 'value',
            key2 = 'value',
            ...
        )

    # function to check GET request of view
    def test_view_GET(self):
        response = self.client.get(reverse('app:name'))
        self.assertEquals(response.status_code,200)
        self.assertTemplateUsed(response,'template/file.html')

    # function to check GET request of view with args
    def test_view_GET(self):
        response = self.client.get(reverse('app:name',args=['slug-text']))
        self.assertEquals(response.status_code,200)
        self.assertTemplateUsed(response,'template/file.html')

    # function to check POST
    def test_view_POST(self):

        # add args if needed
        url = reverse('app:name')
        response = self.client.post(url,{
            'title':'sample',
            'key':'value',
            ...
        })

        # change code accordingly this is used to be redirected to
        # another page after successful form
        self.assertEquals(response.status_code, 302)
        self.assertEquals(ModelCreated.first().title,'sample')

    # function to send no data in POST
    def test_view_POST(self):
        # add args if needed
        url = reverse('app:name')
        response = self.client.post(url)

        self.assertEquals(response.status_code, 302)
        self.assertEquals(ModelCreated.count().title,0)

    # function to DELETE item
    def test_view_DELETE(self):
        # create a data in model first and attempt to remove it
        ModelClass.objects.create(
            key = 'value',
            key2 = 'value',
            ...
        )
        url = reverse('app:name')
        # use args accordingly if url use in url or else as json arg
        # response = self.client.delete(url,json.dumps({'id':1}))
        response = self.client.delete(url)

        self.assertEquals(response.status_code, 204)
        self.assertEquals(ModelCreated.count().title,0)

    # function to remove an item which doesnt exist
    def test_view_DELETE(self):

        url = reverse('app:name')
        # use args accordingly if url use in url or else as json arg
        # response = self.client.delete(url,json.dumps({'id':1}))
        response = self.client.delete(url)

        self.assertEquals(response.status_code, 404)
    """

    # function to setup everything before testing included functions
    def setUp(self):
        self.client = Client()

    # function to check the response of a url and the template used inside
    def test_index_url(self):
        response = self.client.get(reverse("website:index"))
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response, "website/index.html")
