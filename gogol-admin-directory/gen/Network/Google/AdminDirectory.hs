{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdminDirectory
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Admin SDK Directory API lets you view and manage enterprise
-- resources such as users and groups, administrative notifications,
-- security features, and more.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference>
module Network.Google.AdminDirectory
    (
    -- * API
      AdminDirectoryAPI
    , adminDirectoryAPI
    , adminDirectoryURL

    -- * Service Methods

    -- * REST Resources

    -- ** AdminChannelsStop
    , module Network.Google.Resource.Admin.Channels.Stop

    -- ** DirectoryAspsDelete
    , module Network.Google.Resource.Directory.Asps.Delete

    -- ** DirectoryAspsGet
    , module Network.Google.Resource.Directory.Asps.Get

    -- ** DirectoryAspsList
    , module Network.Google.Resource.Directory.Asps.List

    -- ** DirectoryChromeosDevicesGet
    , module Network.Google.Resource.Directory.ChromeosDevices.Get

    -- ** DirectoryChromeosDevicesList
    , module Network.Google.Resource.Directory.ChromeosDevices.List

    -- ** DirectoryChromeosDevicesPatch
    , module Network.Google.Resource.Directory.ChromeosDevices.Patch

    -- ** DirectoryChromeosDevicesUpdate
    , module Network.Google.Resource.Directory.ChromeosDevices.Update

    -- ** DirectoryGroupsAliasesDelete
    , module Network.Google.Resource.Directory.Groups.Aliases.Delete

    -- ** DirectoryGroupsAliasesInsert
    , module Network.Google.Resource.Directory.Groups.Aliases.Insert

    -- ** DirectoryGroupsAliasesList
    , module Network.Google.Resource.Directory.Groups.Aliases.List

    -- ** DirectoryGroupsDelete
    , module Network.Google.Resource.Directory.Groups.Delete

    -- ** DirectoryGroupsGet
    , module Network.Google.Resource.Directory.Groups.Get

    -- ** DirectoryGroupsInsert
    , module Network.Google.Resource.Directory.Groups.Insert

    -- ** DirectoryGroupsList
    , module Network.Google.Resource.Directory.Groups.List

    -- ** DirectoryGroupsPatch
    , module Network.Google.Resource.Directory.Groups.Patch

    -- ** DirectoryGroupsUpdate
    , module Network.Google.Resource.Directory.Groups.Update

    -- ** DirectoryMembersDelete
    , module Network.Google.Resource.Directory.Members.Delete

    -- ** DirectoryMembersGet
    , module Network.Google.Resource.Directory.Members.Get

    -- ** DirectoryMembersInsert
    , module Network.Google.Resource.Directory.Members.Insert

    -- ** DirectoryMembersList
    , module Network.Google.Resource.Directory.Members.List

    -- ** DirectoryMembersPatch
    , module Network.Google.Resource.Directory.Members.Patch

    -- ** DirectoryMembersUpdate
    , module Network.Google.Resource.Directory.Members.Update

    -- ** DirectoryMobileDevicesAction
    , module Network.Google.Resource.Directory.MobileDevices.Action

    -- ** DirectoryMobileDevicesDelete
    , module Network.Google.Resource.Directory.MobileDevices.Delete

    -- ** DirectoryMobileDevicesGet
    , module Network.Google.Resource.Directory.MobileDevices.Get

    -- ** DirectoryMobileDevicesList
    , module Network.Google.Resource.Directory.MobileDevices.List

    -- ** DirectoryNotificationsDelete
    , module Network.Google.Resource.Directory.Notifications.Delete

    -- ** DirectoryNotificationsGet
    , module Network.Google.Resource.Directory.Notifications.Get

    -- ** DirectoryNotificationsList
    , module Network.Google.Resource.Directory.Notifications.List

    -- ** DirectoryNotificationsPatch
    , module Network.Google.Resource.Directory.Notifications.Patch

    -- ** DirectoryNotificationsUpdate
    , module Network.Google.Resource.Directory.Notifications.Update

    -- ** DirectoryOrgUnitsDelete
    , module Network.Google.Resource.Directory.OrgUnits.Delete

    -- ** DirectoryOrgUnitsGet
    , module Network.Google.Resource.Directory.OrgUnits.Get

    -- ** DirectoryOrgUnitsInsert
    , module Network.Google.Resource.Directory.OrgUnits.Insert

    -- ** DirectoryOrgUnitsList
    , module Network.Google.Resource.Directory.OrgUnits.List

    -- ** DirectoryOrgUnitsPatch
    , module Network.Google.Resource.Directory.OrgUnits.Patch

    -- ** DirectoryOrgUnitsUpdate
    , module Network.Google.Resource.Directory.OrgUnits.Update

    -- ** DirectorySchemasDelete
    , module Network.Google.Resource.Directory.Schemas.Delete

    -- ** DirectorySchemasGet
    , module Network.Google.Resource.Directory.Schemas.Get

    -- ** DirectorySchemasInsert
    , module Network.Google.Resource.Directory.Schemas.Insert

    -- ** DirectorySchemasList
    , module Network.Google.Resource.Directory.Schemas.List

    -- ** DirectorySchemasPatch
    , module Network.Google.Resource.Directory.Schemas.Patch

    -- ** DirectorySchemasUpdate
    , module Network.Google.Resource.Directory.Schemas.Update

    -- ** DirectoryTokensDelete
    , module Network.Google.Resource.Directory.Tokens.Delete

    -- ** DirectoryTokensGet
    , module Network.Google.Resource.Directory.Tokens.Get

    -- ** DirectoryTokensList
    , module Network.Google.Resource.Directory.Tokens.List

    -- ** DirectoryUsersAliasesDelete
    , module Network.Google.Resource.Directory.Users.Aliases.Delete

    -- ** DirectoryUsersAliasesInsert
    , module Network.Google.Resource.Directory.Users.Aliases.Insert

    -- ** DirectoryUsersAliasesList
    , module Network.Google.Resource.Directory.Users.Aliases.List

    -- ** DirectoryUsersAliasesWatch
    , module Network.Google.Resource.Directory.Users.Aliases.Watch

    -- ** DirectoryUsersDelete
    , module Network.Google.Resource.Directory.Users.Delete

    -- ** DirectoryUsersGet
    , module Network.Google.Resource.Directory.Users.Get

    -- ** DirectoryUsersInsert
    , module Network.Google.Resource.Directory.Users.Insert

    -- ** DirectoryUsersList
    , module Network.Google.Resource.Directory.Users.List

    -- ** DirectoryUsersMakeAdmin
    , module Network.Google.Resource.Directory.Users.MakeAdmin

    -- ** DirectoryUsersPatch
    , module Network.Google.Resource.Directory.Users.Patch

    -- ** DirectoryUsersPhotosDelete
    , module Network.Google.Resource.Directory.Users.Photos.Delete

    -- ** DirectoryUsersPhotosGet
    , module Network.Google.Resource.Directory.Users.Photos.Get

    -- ** DirectoryUsersPhotosPatch
    , module Network.Google.Resource.Directory.Users.Photos.Patch

    -- ** DirectoryUsersPhotosUpdate
    , module Network.Google.Resource.Directory.Users.Photos.Update

    -- ** DirectoryUsersUndelete
    , module Network.Google.Resource.Directory.Users.Undelete

    -- ** DirectoryUsersUpdate
    , module Network.Google.Resource.Directory.Users.Update

    -- ** DirectoryUsersWatch
    , module Network.Google.Resource.Directory.Users.Watch

    -- ** DirectoryVerificationCodesGenerate
    , module Network.Google.Resource.Directory.VerificationCodes.Generate

    -- ** DirectoryVerificationCodesInvalidate
    , module Network.Google.Resource.Directory.VerificationCodes.Invalidate

    -- ** DirectoryVerificationCodesList
    , module Network.Google.Resource.Directory.VerificationCodes.List

    -- * Types

    -- ** UserAbout
    , UserAbout
    , userAbout
    , uaValue
    , uaContentType

    -- ** VerificationCode
    , VerificationCode
    , verificationCode
    , vcVerificationCode
    , vcEtag
    , vcKind
    , vcUserId

    -- ** OrgUnit
    , OrgUnit
    , orgUnit
    , ouEtag
    , ouParentOrgUnitPath
    , ouKind
    , ouOrgUnitPath
    , ouName
    , ouBlockInheritance
    , ouParentOrgUnitId
    , ouDescription
    , ouOrgUnitId

    -- ** Groups
    , Groups
    , groups
    , gGroups
    , gEtag
    , gNextPageToken
    , gKind

    -- ** UserMakeAdmin
    , UserMakeAdmin
    , userMakeAdmin
    , umaStatus

    -- ** DirectoryUsersListViewType
    , DirectoryUsersListViewType (..)

    -- ** DirectoryChromeosDevicesListProjection
    , DirectoryChromeosDevicesListProjection (..)

    -- ** UserAddress
    , UserAddress
    , userAddress
    , uaStreetAddress
    , uaPoBox
    , uaCountry
    , uaPostalCode
    , uaFormatted
    , uaExtendedAddress
    , uaLocality
    , uaPrimary
    , uaCountryCode
    , uaRegion
    , uaType
    , uaCustomType
    , uaSourceIsStructured

    -- ** DirectoryUsersWatchOrderBy
    , DirectoryUsersWatchOrderBy (..)

    -- ** Group
    , Group
    , group'
    , groEmail
    , groEtag
    , groDirectMembersCount
    , groKind
    , groAliases
    , groNonEditableAliases
    , groName
    , groAdminCreated
    , groId
    , groDescription

    -- ** ChromeOSDeviceActiveTimeRanges
    , ChromeOSDeviceActiveTimeRanges
    , chromeOSDeviceActiveTimeRanges
    , codatrDate
    , codatrActiveTime

    -- ** DirectoryUsersWatchViewType
    , DirectoryUsersWatchViewType (..)

    -- ** Asp
    , Asp
    , asp
    , aspCreationTime
    , aspEtag
    , aspCodeId
    , aspKind
    , aspName
    , aspLastTimeUsed
    , aspUserKey

    -- ** Schemas
    , Schemas
    , schemas
    , sEtag
    , sSchemas
    , sKind

    -- ** ChromeOSDevice
    , ChromeOSDevice
    , chromeOSDevice
    , codStatus
    , codEtag
    , codAnnotatedUser
    , codPlatformVersion
    , codLastSync
    , codActiveTimeRanges
    , codKind
    , codEthernetMACAddress
    , codLastEnrollmentTime
    , codAnnotatedLocation
    , codMACAddress
    , codOrgUnitPath
    , codRecentUsers
    , codSupportEndDate
    , codModel
    , codWillAutoRenew
    , codMeid
    , codDeviceId
    , codBootMode
    , codOrderNumber
    , codAnnotatedAssetId
    , codNotes
    , codSerialNumber
    , codFirmwareVersion
    , codOSVersion

    -- ** Users
    , Users
    , users
    , uEtag
    , uNextPageToken
    , uUsers
    , uKind
    , uTriggerEvent

    -- ** UserIm
    , UserIm
    , userIm
    , uiIm
    , uiProtocol
    , uiPrimary
    , uiCustomProtocol
    , uiType
    , uiCustomType

    -- ** DirectoryMobileDevicesListOrderBy
    , DirectoryMobileDevicesListOrderBy (..)

    -- ** Notification
    , Notification
    , notification
    , nSubject
    , nEtag
    , nKind
    , nBody
    , nFromAddress
    , nIsUnread
    , nNotificationId
    , nSendTime

    -- ** DirectoryUsersListSortOrder
    , DirectoryUsersListSortOrder (..)

    -- ** DirectoryUsersAliasesListEvent
    , DirectoryUsersAliasesListEvent (..)

    -- ** UserCustomSchemas
    , UserCustomSchemas
    , userCustomSchemas

    -- ** DirectoryUsersGetViewType
    , DirectoryUsersGetViewType (..)

    -- ** Aliases
    , Aliases
    , aliases
    , aEtag
    , aKind
    , aAliases

    -- ** Tokens
    , Tokens
    , tokens
    , tEtag
    , tKind
    , tItems

    -- ** Token
    , Token
    , token
    , tokClientId
    , tokEtag
    , tokDisplayText
    , tokKind
    , tokScopes
    , tokNATiveApp
    , tokAnonymous
    , tokUserKey

    -- ** ChromeOSDeviceRecentUsers
    , ChromeOSDeviceRecentUsers
    , chromeOSDeviceRecentUsers
    , codruEmail
    , codruType

    -- ** UserUndelete
    , UserUndelete
    , userUndelete
    , uuOrgUnitPath

    -- ** MobileDevices
    , MobileDevices
    , mobileDevices
    , mdEtag
    , mdNextPageToken
    , mdKind
    , mdMobileDevices

    -- ** Members
    , Members
    , members
    , mEtag
    , mNextPageToken
    , mKind
    , mMembers

    -- ** Channel
    , Channel
    , channel
    , cResourceURI
    , cResourceId
    , cKind
    , cExpiration
    , cToken
    , cAddress
    , cPayLoad
    , cParams
    , cId
    , cType

    -- ** Alias
    , Alias
    , alias
    , aliEtag
    , aliKind
    , aliAlias
    , aliId
    , aliPrimaryEmail

    -- ** DirectoryUsersAliasesWatchEvent
    , DirectoryUsersAliasesWatchEvent (..)

    -- ** UserName
    , UserName
    , userName
    , unGivenName
    , unFullName
    , unFamilyName

    -- ** DirectoryUsersWatchSortOrder
    , DirectoryUsersWatchSortOrder (..)

    -- ** DirectoryMobileDevicesGetProjection
    , DirectoryMobileDevicesGetProjection (..)

    -- ** MobileDeviceApplications
    , MobileDeviceApplications
    , mobileDeviceApplications
    , mdaVersionCode
    , mdaVersionName
    , mdaPackageName
    , mdaDisplayName
    , mdaPermission

    -- ** User
    , User
    , user
    , useCreationTime
    , useLastLoginTime
    , useThumbnailPhotoEtag
    , useEtag
    , useIPWhiteListed
    , useRelations
    , useHashFunction
    , useKind
    , useChangePasswordAtNextLogin
    , useWebsites
    , useAddresses
    , useAliases
    , useThumbnailPhotoURL
    , useExternalIds
    , useSuspended
    , useAgreedToTerms
    , useDeletionTime
    , useNonEditableAliases
    , useOrgUnitPath
    , useCustomerId
    , useIncludeInGlobalAddressList
    , usePhones
    , useName
    , usePassword
    , useEmails
    , useIms
    , useIsAdmin
    , useId
    , useOrganizations
    , usePrimaryEmail
    , useNotes
    , useIsDelegatedAdmin
    , useIsMailboxSetup
    , useCustomSchemas
    , useSuspensionReason

    -- ** Schema
    , Schema
    , schema
    , schEtag
    , schKind
    , schSchemaName
    , schSchemaId
    , schFields

    -- ** DirectoryMobileDevicesListSortOrder
    , DirectoryMobileDevicesListSortOrder (..)

    -- ** DirectoryUsersListOrderBy
    , DirectoryUsersListOrderBy (..)

    -- ** DirectoryOrgUnitsListType
    , DirectoryOrgUnitsListType (..)

    -- ** DirectoryUsersListProjection
    , DirectoryUsersListProjection (..)

    -- ** DirectoryChromeosDevicesUpdateProjection
    , DirectoryChromeosDevicesUpdateProjection (..)

    -- ** DirectoryUsersWatchProjection
    , DirectoryUsersWatchProjection (..)

    -- ** OrgUnits
    , OrgUnits
    , orgUnits
    , oEtag
    , oKind
    , oOrganizationUnits

    -- ** ChannelParams
    , ChannelParams
    , channelParams

    -- ** VerificationCodes
    , VerificationCodes
    , verificationCodes
    , vEtag
    , vKind
    , vItems

    -- ** UserRelation
    , UserRelation
    , userRelation
    , urValue
    , urType
    , urCustomType

    -- ** DirectoryChromeosDevicesListOrderBy
    , DirectoryChromeosDevicesListOrderBy (..)

    -- ** UserWebsite
    , UserWebsite
    , userWebsite
    , uwValue
    , uwPrimary
    , uwType
    , uwCustomType

    -- ** UserOrganization
    , UserOrganization
    , userOrganization
    , uoDePartyment
    , uoLocation
    , uoCostCenter
    , uoDomain
    , uoSymbol
    , uoPrimary
    , uoName
    , uoTitle
    , uoType
    , uoCustomType
    , uoDescription

    -- ** UserPhone
    , UserPhone
    , userPhone
    , upValue
    , upPrimary
    , upType
    , upCustomType

    -- ** UserPhoto
    , UserPhoto
    , userPhoto
    , upPhotoData
    , upEtag
    , upHeight
    , upKind
    , upWidth
    , upMimeType
    , upId
    , upPrimaryEmail

    -- ** DirectoryUsersListEvent
    , DirectoryUsersListEvent (..)

    -- ** DirectoryMobileDevicesListProjection
    , DirectoryMobileDevicesListProjection (..)

    -- ** UserEmail
    , UserEmail
    , userEmail
    , ueAddress
    , uePrimary
    , ueType
    , ueCustomType

    -- ** Member
    , Member
    , member
    , memEmail
    , memEtag
    , memKind
    , memRole
    , memId
    , memType

    -- ** DirectoryUsersGetProjection
    , DirectoryUsersGetProjection (..)

    -- ** MobileDevice
    , MobileDevice
    , mobileDevice
    , mobEmail
    , mobStatus
    , mobEtag
    , mobResourceId
    , mobBuildNumber
    , mobManagedAccountIsOnOwnerProfile
    , mobLastSync
    , mobOtherAccountsInfo
    , mobKind
    , mobAdbStatus
    , mobNetworkOperator
    , mobKernelVersion
    , mobOS
    , mobName
    , mobModel
    , mobDeveloperOptionsStatus
    , mobUnknownSourcesStatus
    , mobMeid
    , mobDeviceId
    , mobFirstSync
    , mobUserAgent
    , mobImei
    , mobType
    , mobWifiMACAddress
    , mobSerialNumber
    , mobHardwareId
    , mobBasebandVersion
    , mobSupportsWorkProfile
    , mobDeviceCompromisedStatus
    , mobApplications
    , mobDefaultLanguage

    -- ** DirectoryChromeosDevicesGetProjection
    , DirectoryChromeosDevicesGetProjection (..)

    -- ** DirectoryChromeosDevicesPatchProjection
    , DirectoryChromeosDevicesPatchProjection (..)

    -- ** UserCustomProperties
    , UserCustomProperties
    , userCustomProperties

    -- ** SchemaFieldSpecNumericIndexingSpec
    , SchemaFieldSpecNumericIndexingSpec
    , schemaFieldSpecNumericIndexingSpec
    , sfsnisMaxValue
    , sfsnisMinValue

    -- ** MobileDeviceAction
    , MobileDeviceAction
    , mobileDeviceAction
    , mdaAction

    -- ** SchemaFieldSpec
    , SchemaFieldSpec
    , schemaFieldSpec
    , sfsEtag
    , sfsKind
    , sfsNumericIndexingSpec
    , sfsReadAccessType
    , sfsFieldId
    , sfsIndexed
    , sfsFieldType
    , sfsFieldName
    , sfsMultiValued

    -- ** DirectoryUsersWatchEvent
    , DirectoryUsersWatchEvent (..)

    -- ** Notifications
    , Notifications
    , notifications
    , notEtag
    , notNextPageToken
    , notKind
    , notItems
    , notUnreadNotificationsCount

    -- ** DirectoryChromeosDevicesListSortOrder
    , DirectoryChromeosDevicesListSortOrder (..)

    -- ** UserExternalId
    , UserExternalId
    , userExternalId
    , ueiValue
    , ueiType
    , ueiCustomType

    -- ** Asps
    , Asps
    , asps
    , aaEtag
    , aaKind
    , aaItems

    -- ** ChromeOSDevices
    , ChromeOSDevices
    , chromeOSDevices
    , cosdEtag
    , cosdNextPageToken
    , cosdKind
    , cosdChromeosDevices
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Admin.Channels.Stop
import           Network.Google.Resource.Directory.Asps.Delete
import           Network.Google.Resource.Directory.Asps.Get
import           Network.Google.Resource.Directory.Asps.List
import           Network.Google.Resource.Directory.ChromeosDevices.Get
import           Network.Google.Resource.Directory.ChromeosDevices.List
import           Network.Google.Resource.Directory.ChromeosDevices.Patch
import           Network.Google.Resource.Directory.ChromeosDevices.Update
import           Network.Google.Resource.Directory.Groups.Aliases.Delete
import           Network.Google.Resource.Directory.Groups.Aliases.Insert
import           Network.Google.Resource.Directory.Groups.Aliases.List
import           Network.Google.Resource.Directory.Groups.Delete
import           Network.Google.Resource.Directory.Groups.Get
import           Network.Google.Resource.Directory.Groups.Insert
import           Network.Google.Resource.Directory.Groups.List
import           Network.Google.Resource.Directory.Groups.Patch
import           Network.Google.Resource.Directory.Groups.Update
import           Network.Google.Resource.Directory.Members.Delete
import           Network.Google.Resource.Directory.Members.Get
import           Network.Google.Resource.Directory.Members.Insert
import           Network.Google.Resource.Directory.Members.List
import           Network.Google.Resource.Directory.Members.Patch
import           Network.Google.Resource.Directory.Members.Update
import           Network.Google.Resource.Directory.MobileDevices.Action
import           Network.Google.Resource.Directory.MobileDevices.Delete
import           Network.Google.Resource.Directory.MobileDevices.Get
import           Network.Google.Resource.Directory.MobileDevices.List
import           Network.Google.Resource.Directory.Notifications.Delete
import           Network.Google.Resource.Directory.Notifications.Get
import           Network.Google.Resource.Directory.Notifications.List
import           Network.Google.Resource.Directory.Notifications.Patch
import           Network.Google.Resource.Directory.Notifications.Update
import           Network.Google.Resource.Directory.OrgUnits.Delete
import           Network.Google.Resource.Directory.OrgUnits.Get
import           Network.Google.Resource.Directory.OrgUnits.Insert
import           Network.Google.Resource.Directory.OrgUnits.List
import           Network.Google.Resource.Directory.OrgUnits.Patch
import           Network.Google.Resource.Directory.OrgUnits.Update
import           Network.Google.Resource.Directory.Schemas.Delete
import           Network.Google.Resource.Directory.Schemas.Get
import           Network.Google.Resource.Directory.Schemas.Insert
import           Network.Google.Resource.Directory.Schemas.List
import           Network.Google.Resource.Directory.Schemas.Patch
import           Network.Google.Resource.Directory.Schemas.Update
import           Network.Google.Resource.Directory.Tokens.Delete
import           Network.Google.Resource.Directory.Tokens.Get
import           Network.Google.Resource.Directory.Tokens.List
import           Network.Google.Resource.Directory.Users.Aliases.Delete
import           Network.Google.Resource.Directory.Users.Aliases.Insert
import           Network.Google.Resource.Directory.Users.Aliases.List
import           Network.Google.Resource.Directory.Users.Aliases.Watch
import           Network.Google.Resource.Directory.Users.Delete
import           Network.Google.Resource.Directory.Users.Get
import           Network.Google.Resource.Directory.Users.Insert
import           Network.Google.Resource.Directory.Users.List
import           Network.Google.Resource.Directory.Users.MakeAdmin
import           Network.Google.Resource.Directory.Users.Patch
import           Network.Google.Resource.Directory.Users.Photos.Delete
import           Network.Google.Resource.Directory.Users.Photos.Get
import           Network.Google.Resource.Directory.Users.Photos.Patch
import           Network.Google.Resource.Directory.Users.Photos.Update
import           Network.Google.Resource.Directory.Users.Undelete
import           Network.Google.Resource.Directory.Users.Update
import           Network.Google.Resource.Directory.Users.Watch
import           Network.Google.Resource.Directory.VerificationCodes.Generate
import           Network.Google.Resource.Directory.VerificationCodes.Invalidate
import           Network.Google.Resource.Directory.VerificationCodes.List

{- $resources
TODO
-}

type AdminDirectoryAPI =
     GroupsAliasesInsertResource :<|>
       GroupsAliasesListResource
       :<|> GroupsAliasesDeleteResource
       :<|> GroupsInsertResource
       :<|> GroupsListResource
       :<|> GroupsPatchResource
       :<|> GroupsGetResource
       :<|> GroupsDeleteResource
       :<|> GroupsUpdateResource
       :<|> UsersAliasesInsertResource
       :<|> UsersAliasesListResource
       :<|> UsersAliasesDeleteResource
       :<|> UsersAliasesWatchResource
       :<|> UsersPhotosPatchResource
       :<|> UsersPhotosGetResource
       :<|> UsersPhotosDeleteResource
       :<|> UsersPhotosUpdateResource
       :<|> UsersInsertResource
       :<|> UsersListResource
       :<|> UsersUndeleteResource
       :<|> UsersPatchResource
       :<|> UsersGetResource
       :<|> UsersMakeAdminResource
       :<|> UsersDeleteResource
       :<|> UsersUpdateResource
       :<|> UsersWatchResource
       :<|> SchemasInsertResource
       :<|> SchemasListResource
       :<|> SchemasPatchResource
       :<|> SchemasGetResource
       :<|> SchemasDeleteResource
       :<|> SchemasUpdateResource
       :<|> TokensListResource
       :<|> TokensGetResource
       :<|> TokensDeleteResource
       :<|> ChannelsStopResource
       :<|> MembersInsertResource
       :<|> MembersListResource
       :<|> MembersPatchResource
       :<|> MembersGetResource
       :<|> MembersDeleteResource
       :<|> MembersUpdateResource
       :<|> MobileDevicesListResource
       :<|> MobileDevicesGetResource
       :<|> MobileDevicesActionResource
       :<|> MobileDevicesDeleteResource
       :<|> OrgUnitsInsertResource
       :<|> OrgUnitsListResource
       :<|> OrgUnitsPatchResource
       :<|> OrgUnitsGetResource
       :<|> OrgUnitsDeleteResource
       :<|> OrgUnitsUpdateResource
       :<|> VerificationCodesListResource
       :<|> VerificationCodesGenerateResource
       :<|> VerificationCodesInvalidateResource
       :<|> NotificationsListResource
       :<|> NotificationsPatchResource
       :<|> NotificationsGetResource
       :<|> NotificationsDeleteResource
       :<|> NotificationsUpdateResource
       :<|> ChromeosDevicesListResource
       :<|> ChromeosDevicesPatchResource
       :<|> ChromeosDevicesGetResource
       :<|> ChromeosDevicesUpdateResource
       :<|> AspsListResource
       :<|> AspsGetResource
       :<|> AspsDeleteResource

adminDirectoryAPI :: Proxy AdminDirectoryAPI
adminDirectoryAPI = Proxy
