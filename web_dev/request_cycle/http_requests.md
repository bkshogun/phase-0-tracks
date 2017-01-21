COMMON HTTP STATUS CODES
- 200 OK - Request succeeded 
- 300 multiple choices - requested resource has different conflicting choices, cannot be resolved
- 301 moved permanently - location changed, typically refers to a newly assigned URI
- 302 found - requested rescource found, reqest redirected
- 400 bad request - request could not be resolved by the server, due to bad syntax. Modifications needed
- 401 unauthorized - request required user authentication 
- 403 forbidden - server refuses request, regardless of authentication
- 404 not found - server cannot find the location requested. No indication of permenance 
- 410 gone - resource no longer avaliable at requested URI, no forwarding info is known
- 500 internal server error - server encountered unexpected condition
- 503 service unavailable - server cannot fulfilll request, likely due to server error/crash/overload


GET/POST. WHEN MIGHT EACH BE USED?

GET- requests data from a specific resource. More commonly used, I would guess, used to retrieve data to be rendered for the client 

POST- submits data to be processed. Used for login infomation, user data, uploaded information


WHAT IS A COOKIE, HOW DOES IT RELATE TO HTTP REQUESTS

Cookies are used to store and track user information, including what data is accessed, auto-fill purposes, whether or not a user is logged in and on which account