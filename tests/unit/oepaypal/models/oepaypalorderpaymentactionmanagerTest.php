<?php
/**
 * This file is part of OXID eSales PayPal module.
 *
 * OXID eSales PayPal module is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * OXID eSales PayPal module is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OXID eSales PayPal module.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @link      http://www.oxid-esales.com
 * @copyright (C) OXID eSales AG 2003-2014
 */

require_once realpath(".") . '/unit/OxidTestCase.php';
require_once realpath(".") . '/unit/test_config.inc.php';

/**
 * Testing oePayPalOxState class.
 */
class Unit_oePayPal_models_oePayPalOrderPaymentActionManagerTest extends OxidTestCase
{

    /**
     * Data provider for testIsActionValidCapture()
     *
     * @return array
     */
    public function isActionValid_dataProvider()
    {
        return array(
            array('capture', 1000, 0, 'Completed', 'refund', true),
            array('capture', 1000, 50, 'Completed', 'refund', true),
            array('capture', 1000, 1000, 'Completed', 'refund', false),
            array('capture', 0, 0, 'Completed', 'refund', false),
            array('capture', 0, 20, 'Completed', 'refund', false),
            array('capture', -30, 20, 'Completed', 'refund', false),
            array('capture', 1000, 0, 'Pending', 'refund', false),
            array('void', 1000, 0, 'Voided', 'refund', false),
            array('authorization', 1000, 0, 'Pending', 'refund', false),
            array('testAction', -99, -8, 'test', 'testAction', false),
        );
    }

    /**
     * Tests isPayPalActionValid
     *
     * @dataProvider isActionValid_dataProvider
     */
    public function testIsActionAvailable($sPayment, $dAmount, $dRefunded, $sState, $sAction, $dIsValid)
    {
        $oPayment = new oePayPalOrderPayment();

        $oPayment->setAction($sPayment);
        $oPayment->setAmount($dAmount);
        $oPayment->setRefundedAmount($dRefunded);
        $oPayment->setStatus($sState);

        $oActionManager = new oePayPalOrderPaymentActionManager();
        $oActionManager->setPayment($oPayment);

        $this->assertEquals($dIsValid, $oActionManager->isActionAvailable($sAction));
    }
}
