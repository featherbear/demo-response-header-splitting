HTTP Response Header Splitting Demo
---

* Looks like there is a HttpOnly flag that gets set... how do we extract it?
* XSS won't work right? HttpOnly is set, and it would be blocked because of CSP settings
* Perform a Response Splitting exploit (enter a name that spans over multiple lines)
  * The name will break the format of the HTTP Response, and the browser will parse these split response headers as body content
  * The Set-Cookie header is now body content
  * We also broke CSP!
* Perform XSS to exfiltrate the flag
  * i.e. set the username to a multiline string that includes an XSS payload in the later lines


