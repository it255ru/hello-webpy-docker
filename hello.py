#!/usr/bin/env python
# -*- coding: utf-8 -*-

import web
urls = (
    '/(.*)', 'hello'
)

app = web.application(urls, globals())
application = app.wsgifunc()
class hello:
    def GET(self, name):
        if not name:
            name = 'World'
        return 'Web.py: Hello, ' + name + '!'
        
if __name__ == '__main__':
    app.run()
