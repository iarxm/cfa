# iarom mail@iarom.org
config.load_autoconfig() # req for site specifics
config.source('extended/shared.py')
config.source('extended/themes/theme_black.py')
c.content.local_content_can_access_remote_urls = True # perhaps keep separate?
