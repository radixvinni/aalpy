#!/usr/bin/env python
# -*- coding: utf-8 -*-
"module for distant string sharing"
from urllib.request import urlopen
from urllib.parse import urlencode
import json

class Session(object):
    def __init__(self,*args):
        url_base = '/'.join(args)
        if not url_base.startswith('http://'):
          url_base = 'http://' + url_base
        self.url_base = url_base

    def __setattr__(self,name,val):
      if name == 'url_base':
        object.__setattr__(self,name,val)
      else:
        urlopen(self.url_base+'/set/'+name,urlencode({'value':val})).read()
        
    def __getattr__(self,name):
      if name == 'url_base':
        object.__getattr__(self,name)
      else:
        data = urlopen(self.url_base+'/get/'+name).read()
        if not len(data): raise KeyError
        return data
    
    def __delattr__(self, name):
      if name != 'url_base':
        urlopen(self.url_base+'/del/'+name).read()
      
    @property
    def __dict__(self):
        data = urlopen(self.url_base+'/list').read()
        if len(data):
          return json.loads(data)
    def __dir__(self):return self.__dict__.keys()
    def __contains__(self,var): return var in self.__dict__

if __name__ == '__main__':
  test = Session('http://localhost:8081/poll','admin','')

