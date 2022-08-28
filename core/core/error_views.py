from django.shortcuts import render

# function for error 400
def error_400(request, exception):
    context = {"exception": exception}
    response = render(request, "errors/400.html", context=context)
    response.status_code = 400
    return response


# function for error 403


def error_403(request, exception):
    context = {"exception": exception}
    response = render(request, "errors/403.html", context=context)
    response.status_code = 403
    return response


# function for error 404


def error_404(request, exception):
    context = {"exception": exception}
    response = render(request, "errors/404.html", context=context)
    response.status_code = 404
    return response


# function for error 500


def error_500(request):
    response = render(request, "errors/500.html")
    response.status_code = 500
    return response
