# config.py

class Config(object):
    """
    Common configurations
    """
    #name = 'G'
    # Put any configurations here that are common across all environments

class DevelopmentConfig(Config):
    """
    Development configurations
    """

    DEBUG = True
    SQLALCHEMY_ECHO = True
    PORT=8080
    RELOADER=True

class ProductionConfig(Config):
    """ 
    Production configurations
    """

    #DEBUG = False
    DEBUG = True
    SQLALCHEMY_ECHO = True
    PORT=8080
    RELOADER=True

class TestingConfig(Config):
    """
    Testing configurations
    """

    TESTING = True

app_config = {
    'development': DevelopmentConfig,
    'production': ProductionConfig,
    'testing': TestingConfig
}