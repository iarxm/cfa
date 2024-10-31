# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=python:
config.load_autoconfig() # req for site specifics
config.source('confix.py')
config.source('interface/interface-x.py')
config.source('interface/colors-a.py')
c.content.local_content_can_access_remote_urls = True # perhaps keep separate?
