# iarom madden mail@iarom.org
config.load_autoconfig() # req for site specifics
config.source('confix.py')
c.content.local_content_can_access_remote_urls = True # perhaps keep separate?
config.source('themes/theme-a.py')
