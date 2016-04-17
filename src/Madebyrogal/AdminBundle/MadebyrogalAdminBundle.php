<?php

namespace Madebyrogal\AdminBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class MadebyrogalAdminBundle extends Bundle
{
    public function getParent()
    {
        return 'FOSUserBundle';
    }
}
