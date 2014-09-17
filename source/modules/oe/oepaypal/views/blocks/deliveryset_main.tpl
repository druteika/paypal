[{$smarty.block.parent}]
[{assign var="readonly" value=""}]
<tr>
    <td class="edittext">
        [{oxmultilang ident="OEPAYPAL_MOBILE_DEFAULT_PAYMENT"}]
    </td>
    <td class="edittext">
        <input class="edittext" type="checkbox" name="isPayPalDefaultMobilePayment" value='1'
        [{if $blIsPayPalDefaultMobilePayment}]checked[{/if}]>
        [{oxinputhelp ident="OEPAYPAL_HELP_MOBILE_DEFAULT_PAYMENT"}][{*TODO: This ident is missing in the module and eShop*}]
    </td>
</tr>
