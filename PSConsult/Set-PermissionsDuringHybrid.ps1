
### Distribution Group ###

# Assign in Cloud #
Get-DistributionGroup "GroupPerm" | Add-RecipientPermission -Trustee "Cloud01" -AccessRights SendAs
# Assign on-Premises #
Get-DistributionGroup "GroupPerm" | Set-DistributionGroup -GrantSendOnBehalfTo "Cloud01"

### Mailboxes ###

# Assign in Cloud #
Get-Mailbox “Mailbox01” | Add-RecipientPermission -Trustee "Cloud01" -AccessRights SendAs
Get-Mailbox “Mailbox01” | Add-MailboxPermission -User "Cloud01" -AccessRights FullAccess
Get-Mailbox “Mailbox01” | Set-Mailbox -GrantSendOnBehalfTo "Cloud01"
