# https-redir
A simple web server who's lone purpose in life is to redirect any http connection to it's https equivalent
# Why?!
Amazon load balancers do not have a built-in method to redirect http requests to https.  Rather they demand that you do that with your webserver.  This is one possible solution to the problem
