<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitc52ebfbf30fadb1cecddae09d70e0ca9
{
    public static $files = array (
        '0e6d7bf4a5811bfa5cf40c5ccd6fae6a' => __DIR__ . '/..' . '/symfony/polyfill-mbstring/bootstrap.php',
        '65fec9ebcfbb3cbb4fd0d519687aea01' => __DIR__ . '/..' . '/danielstjules/stringy/src/Create.php',
        '2cffec82183ee1cea088009cef9a6fc3' => __DIR__ . '/..' . '/ezyang/htmlpurifier/library/HTMLPurifier.composer.php',
        '72579e7bd17821bb1321b87411366eae' => __DIR__ . '/..' . '/illuminate/support/helpers.php',
        'fe1bcd0336136e435eaf197895daf81a' => __DIR__ . '/..' . '/nikic/php-parser/lib/bootstrap.php',
    );

    public static $prefixLengthsPsr4 = array (
        'W' => 
        array (
            'Wikimedia\\Composer\\' => 19,
        ),
        'S' => 
        array (
            'Symfony\\Polyfill\\Mbstring\\' => 26,
            'Symfony\\Component\\Translation\\' => 30,
            'Stringy\\' => 8,
            'Slim\\Views\\' => 11,
        ),
        'L' => 
        array (
            'League\\Csv\\' => 11,
        ),
        'I' => 
        array (
            'Illuminate\\Support\\' => 19,
            'Illuminate\\Database\\' => 20,
            'Illuminate\\Contracts\\' => 21,
            'Illuminate\\Container\\' => 21,
        ),
        'C' => 
        array (
            'Carbon\\' => 7,
        ),
        'B' => 
        array (
            'Birke\\' => 6,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Wikimedia\\Composer\\' => 
        array (
            0 => __DIR__ . '/..' . '/wikimedia/composer-merge-plugin/src',
        ),
        'Symfony\\Polyfill\\Mbstring\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/polyfill-mbstring',
        ),
        'Symfony\\Component\\Translation\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/translation',
        ),
        'Stringy\\' => 
        array (
            0 => __DIR__ . '/..' . '/danielstjules/stringy/src',
        ),
        'Slim\\Views\\' => 
        array (
            0 => __DIR__ . '/..' . '/slim/views',
        ),
        'League\\Csv\\' => 
        array (
            0 => __DIR__ . '/..' . '/league/csv/src',
        ),
        'Illuminate\\Support\\' => 
        array (
            0 => __DIR__ . '/..' . '/illuminate/support',
        ),
        'Illuminate\\Database\\' => 
        array (
            0 => __DIR__ . '/..' . '/illuminate/database',
        ),
        'Illuminate\\Contracts\\' => 
        array (
            0 => __DIR__ . '/..' . '/illuminate/contracts',
        ),
        'Illuminate\\Container\\' => 
        array (
            0 => __DIR__ . '/..' . '/illuminate/container',
        ),
        'Carbon\\' => 
        array (
            0 => __DIR__ . '/..' . '/nesbot/carbon/src/Carbon',
        ),
        'Birke\\' => 
        array (
            0 => __DIR__ . '/..' . '/birke/rememberme/src',
        ),
    );

    public static $prefixesPsr0 = array (
        'V' => 
        array (
            'Valitron' => 
            array (
                0 => __DIR__ . '/..' . '/vlucas/valitron/src',
            ),
        ),
        'T' => 
        array (
            'Twig_' => 
            array (
                0 => __DIR__ . '/..' . '/twig/twig/lib',
            ),
        ),
        'S' => 
        array (
            'Slim' => 
            array (
                0 => __DIR__ . '/..' . '/slim/slim',
            ),
        ),
        'H' => 
        array (
            'HTMLPurifier' => 
            array (
                0 => __DIR__ . '/..' . '/ezyang/htmlpurifier/library',
            ),
        ),
        'D' => 
        array (
            'Doctrine\\Common\\Inflector\\' => 
            array (
                0 => __DIR__ . '/..' . '/doctrine/inflector/lib',
            ),
        ),
    );

    public static $classMap = array (
        'AccessCondition' => __DIR__ . '/../..' . '/models/auth/AccessCondition.php',
        'EasyPeasyICS' => __DIR__ . '/..' . '/phpmailer/phpmailer/extras/EasyPeasyICS.php',
        'Fortress\\ClientSideValidationAdapter' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/adapters/ClientSideValidationAdapter.php',
        'Fortress\\DataSanitizer' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/DataSanitizer.php',
        'Fortress\\DataSanitizerInterface' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/DataSanitizer.php',
        'Fortress\\FormValidationAdapter' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/FormValidationAdapter.php',
        'Fortress\\HTTPRequestFortress' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/HTTPRequestFortress.php',
        'Fortress\\JqueryValidationAdapter' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/JqueryValidationAdapter.php',
        'Fortress\\MessageStream' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/MessageStream.php',
        'Fortress\\MessageTranslator' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/MessageTranslator.php',
        'Fortress\\RequestSchema' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/RequestSchema.php',
        'Fortress\\ServerSideValidator' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/ServerSideValidator.php',
        'Fortress\\ServerSideValidatorInterface' => __DIR__ . '/..' . '/userfrosting/fortress/fortress/ServerSideValidator.php',
        'PHPMailer' => __DIR__ . '/..' . '/phpmailer/phpmailer/class.phpmailer.php',
        'POP3' => __DIR__ . '/..' . '/phpmailer/phpmailer/class.pop3.php',
        'ParserNodeFunctionEvaluator' => __DIR__ . '/../..' . '/models/auth/ParserNodeFunctionEvaluator.php',
        'SMTP' => __DIR__ . '/..' . '/phpmailer/phpmailer/class.smtp.php',
        'Slim\\Extras\\Middleware\\CsrfGuard' => __DIR__ . '/../..' . '/middleware/CsrfGuard.php',
        'UserFrosting\\AccessConditionExpression' => __DIR__ . '/../..' . '/models/auth/AccessConditionExpression.php',
        'UserFrosting\\AccountController' => __DIR__ . '/../..' . '/controllers/AccountController.php',
        'UserFrosting\\AccountDisabledException' => __DIR__ . '/../..' . '/middleware/usersession/Exception.php',
        'UserFrosting\\AccountInvalidException' => __DIR__ . '/../..' . '/middleware/usersession/Exception.php',
        'UserFrosting\\AdminController' => __DIR__ . '/../..' . '/controllers/AdminController.php',
        'UserFrosting\\ApiController' => __DIR__ . '/../..' . '/controllers/ApiController.php',
        'UserFrosting\\AuthCompromisedException' => __DIR__ . '/../..' . '/middleware/usersession/Exception.php',
        'UserFrosting\\AuthController' => __DIR__ . '/../..' . '/controllers/AuthController.php',
        'UserFrosting\\AuthExpiredException' => __DIR__ . '/../..' . '/middleware/usersession/Exception.php',
        'UserFrosting\\Authentication' => __DIR__ . '/../..' . '/models/auth/Authentication.php',
        'UserFrosting\\AuthorizationException' => __DIR__ . '/../..' . '/models/auth/AuthorizationException.php',
        'UserFrosting\\BaseController' => __DIR__ . '/../..' . '/controllers/BaseController.php',
        'UserFrosting\\Database' => __DIR__ . '/../..' . '/models/database/Database.php',
        'UserFrosting\\DatabaseInvalidException' => __DIR__ . '/../..' . '/middleware/usersession/Exception.php',
        'UserFrosting\\DatabaseTable' => __DIR__ . '/../..' . '/models/database/DatabaseTable.php',
        'UserFrosting\\EmailRecipient' => __DIR__ . '/../..' . '/models/notify/EmailRecipient.php',
        'UserFrosting\\Group' => __DIR__ . '/../..' . '/models/database/Group.php',
        'UserFrosting\\GroupAuth' => __DIR__ . '/../..' . '/models/database/GroupAuth.php',
        'UserFrosting\\GroupController' => __DIR__ . '/../..' . '/controllers/GroupController.php',
        'UserFrosting\\GroupLoader' => __DIR__ . '/../..' . '/models/database/GroupLoader.php',
        'UserFrosting\\InstallController' => __DIR__ . '/../..' . '/controllers/InstallController.php',
        'UserFrosting\\Notification' => __DIR__ . '/../..' . '/models/notify/Notification.php',
        'UserFrosting\\PageSchema' => __DIR__ . '/../..' . '/models/PageSchema.php',
        'UserFrosting\\SiteSettings' => __DIR__ . '/../..' . '/models/database/SiteSettings.php',
        'UserFrosting\\UFModel' => __DIR__ . '/../..' . '/models/database/UFModel.php',
        'UserFrosting\\User' => __DIR__ . '/../..' . '/models/database/User.php',
        'UserFrosting\\UserAuth' => __DIR__ . '/../..' . '/models/database/UserAuth.php',
        'UserFrosting\\UserCollection' => __DIR__ . '/../..' . '/models/collections/UserCollection.php',
        'UserFrosting\\UserController' => __DIR__ . '/../..' . '/controllers/UserController.php',
        'UserFrosting\\UserEvent' => __DIR__ . '/../..' . '/models/database/UserEvent.php',
        'UserFrosting\\UserFrosting' => __DIR__ . '/../..' . '/models/UserFrosting.php',
        'UserFrosting\\UserLoader' => __DIR__ . '/../..' . '/models/database/UserLoader.php',
        'UserFrosting\\UserSession' => __DIR__ . '/../..' . '/middleware/usersession/UserSession.php',
        'ntlm_sasl_client_class' => __DIR__ . '/..' . '/phpmailer/phpmailer/extras/ntlm_sasl_client.php',
        'phpmailerException' => __DIR__ . '/..' . '/phpmailer/phpmailer/class.phpmailer.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitc52ebfbf30fadb1cecddae09d70e0ca9::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitc52ebfbf30fadb1cecddae09d70e0ca9::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInitc52ebfbf30fadb1cecddae09d70e0ca9::$prefixesPsr0;
            $loader->classMap = ComposerStaticInitc52ebfbf30fadb1cecddae09d70e0ca9::$classMap;

        }, null, ClassLoader::class);
    }
}
