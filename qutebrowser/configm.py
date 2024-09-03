# vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=python:
# mail configs
config.load_autoconfig() # req for site specifics
config.source('configa.py')
c.content.local_content_can_access_remote_urls = True
