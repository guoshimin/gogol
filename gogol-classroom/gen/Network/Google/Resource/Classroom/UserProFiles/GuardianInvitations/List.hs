{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of guardian invitations that the requesting user is
-- permitted to view, filtered by the parameters provided. This method
-- returns the following error codes: * \`PERMISSION_DENIED\` if a
-- \`student_id\` is specified, and the requesting user is not permitted to
-- view guardian invitations for that student, if \`\"-\"\` is specified as
-- the \`student_id\` and the user is not a domain administrator, if
-- guardians are not enabled for the domain in question, or for other
-- access errors. * \`INVALID_ARGUMENT\` if a \`student_id\` is specified,
-- but its format cannot be recognized (it is not an email address, nor a
-- \`student_id\` from the API, nor the literal string \`me\`). May also be
-- returned if an invalid \`page_token\` or \`state\` is provided. *
-- \`NOT_FOUND\` if a \`student_id\` is specified, and its format can be
-- recognized, but Classroom has no record of that student.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.guardianInvitations.list@.
module Network.Google.Resource.Classroom.UserProFiles.GuardianInvitations.List
    (
    -- * REST Resource
      UserProFilesGuardianInvitationsListResource

    -- * Creating a Request
    , userProFilesGuardianInvitationsList
    , UserProFilesGuardianInvitationsList

    -- * Request Lenses
    , upfgilStudentId
    , upfgilStates
    , upfgilXgafv
    , upfgilUploadProtocol
    , upfgilPp
    , upfgilAccessToken
    , upfgilUploadType
    , upfgilBearerToken
    , upfgilInvitedEmailAddress
    , upfgilPageToken
    , upfgilPageSize
    , upfgilCallback
    ) where

import           Network.Google.Classroom.Types
import           Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.guardianInvitations.list@ method which the
-- 'UserProFilesGuardianInvitationsList' request conforms to.
type UserProFilesGuardianInvitationsListResource =
     "v1" :>
       "userProfiles" :>
         Capture "studentId" Text :>
           "guardianInvitations" :>
             QueryParams "states" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "invitedEmailAddress" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "pageSize" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] ListGuardianInvitationsResponse

-- | Returns a list of guardian invitations that the requesting user is
-- permitted to view, filtered by the parameters provided. This method
-- returns the following error codes: * \`PERMISSION_DENIED\` if a
-- \`student_id\` is specified, and the requesting user is not permitted to
-- view guardian invitations for that student, if \`\"-\"\` is specified as
-- the \`student_id\` and the user is not a domain administrator, if
-- guardians are not enabled for the domain in question, or for other
-- access errors. * \`INVALID_ARGUMENT\` if a \`student_id\` is specified,
-- but its format cannot be recognized (it is not an email address, nor a
-- \`student_id\` from the API, nor the literal string \`me\`). May also be
-- returned if an invalid \`page_token\` or \`state\` is provided. *
-- \`NOT_FOUND\` if a \`student_id\` is specified, and its format can be
-- recognized, but Classroom has no record of that student.
--
-- /See:/ 'userProFilesGuardianInvitationsList' smart constructor.
data UserProFilesGuardianInvitationsList = UserProFilesGuardianInvitationsList'
    { _upfgilStudentId           :: !Text
    , _upfgilStates              :: !(Maybe [Text])
    , _upfgilXgafv               :: !(Maybe Text)
    , _upfgilUploadProtocol      :: !(Maybe Text)
    , _upfgilPp                  :: !Bool
    , _upfgilAccessToken         :: !(Maybe Text)
    , _upfgilUploadType          :: !(Maybe Text)
    , _upfgilBearerToken         :: !(Maybe Text)
    , _upfgilInvitedEmailAddress :: !(Maybe Text)
    , _upfgilPageToken           :: !(Maybe Text)
    , _upfgilPageSize            :: !(Maybe (Textual Int32))
    , _upfgilCallback            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserProFilesGuardianInvitationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgilStudentId'
--
-- * 'upfgilStates'
--
-- * 'upfgilXgafv'
--
-- * 'upfgilUploadProtocol'
--
-- * 'upfgilPp'
--
-- * 'upfgilAccessToken'
--
-- * 'upfgilUploadType'
--
-- * 'upfgilBearerToken'
--
-- * 'upfgilInvitedEmailAddress'
--
-- * 'upfgilPageToken'
--
-- * 'upfgilPageSize'
--
-- * 'upfgilCallback'
userProFilesGuardianInvitationsList
    :: Text -- ^ 'upfgilStudentId'
    -> UserProFilesGuardianInvitationsList
userProFilesGuardianInvitationsList pUpfgilStudentId_ =
    UserProFilesGuardianInvitationsList'
    { _upfgilStudentId = pUpfgilStudentId_
    , _upfgilStates = Nothing
    , _upfgilXgafv = Nothing
    , _upfgilUploadProtocol = Nothing
    , _upfgilPp = True
    , _upfgilAccessToken = Nothing
    , _upfgilUploadType = Nothing
    , _upfgilBearerToken = Nothing
    , _upfgilInvitedEmailAddress = Nothing
    , _upfgilPageToken = Nothing
    , _upfgilPageSize = Nothing
    , _upfgilCallback = Nothing
    }

-- | The ID of the student whose guardian invitations are to be returned. The
-- identifier can be one of the following: * the numeric identifier for the
-- user * the email address of the user * the string literal \`\"me\"\`,
-- indicating the requesting user * the string literal \`\"-\"\`,
-- indicating that results should be returned for all students that the
-- requesting user is permitted to view guardian invitations.
upfgilStudentId :: Lens' UserProFilesGuardianInvitationsList Text
upfgilStudentId
  = lens _upfgilStudentId
      (\ s a -> s{_upfgilStudentId = a})

-- | If specified, only results with the specified \`state\` values will be
-- returned. Otherwise, results with a \`state\` of \`PENDING\` will be
-- returned.
upfgilStates :: Lens' UserProFilesGuardianInvitationsList [Text]
upfgilStates
  = lens _upfgilStates (\ s a -> s{_upfgilStates = a})
      . _Default
      . _Coerce

-- | V1 error format.
upfgilXgafv :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilXgafv
  = lens _upfgilXgafv (\ s a -> s{_upfgilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfgilUploadProtocol :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilUploadProtocol
  = lens _upfgilUploadProtocol
      (\ s a -> s{_upfgilUploadProtocol = a})

-- | Pretty-print response.
upfgilPp :: Lens' UserProFilesGuardianInvitationsList Bool
upfgilPp = lens _upfgilPp (\ s a -> s{_upfgilPp = a})

-- | OAuth access token.
upfgilAccessToken :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilAccessToken
  = lens _upfgilAccessToken
      (\ s a -> s{_upfgilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfgilUploadType :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilUploadType
  = lens _upfgilUploadType
      (\ s a -> s{_upfgilUploadType = a})

-- | OAuth bearer token.
upfgilBearerToken :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilBearerToken
  = lens _upfgilBearerToken
      (\ s a -> s{_upfgilBearerToken = a})

-- | If specified, only results with the specified \`invited_email_address\`
-- will be returned.
upfgilInvitedEmailAddress :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilInvitedEmailAddress
  = lens _upfgilInvitedEmailAddress
      (\ s a -> s{_upfgilInvitedEmailAddress = a})

-- | nextPageToken value returned from a previous list call, indicating that
-- the subsequent page of results should be returned. The list request must
-- be otherwise identical to the one that resulted in this token.
upfgilPageToken :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilPageToken
  = lens _upfgilPageToken
      (\ s a -> s{_upfgilPageToken = a})

-- | Maximum number of items to return. Zero or unspecified indicates that
-- the server may assign a maximum. The server may return fewer than the
-- specified number of results.
upfgilPageSize :: Lens' UserProFilesGuardianInvitationsList (Maybe Int32)
upfgilPageSize
  = lens _upfgilPageSize
      (\ s a -> s{_upfgilPageSize = a})
      . mapping _Coerce

-- | JSONP
upfgilCallback :: Lens' UserProFilesGuardianInvitationsList (Maybe Text)
upfgilCallback
  = lens _upfgilCallback
      (\ s a -> s{_upfgilCallback = a})

instance GoogleRequest
         UserProFilesGuardianInvitationsList where
        type Rs UserProFilesGuardianInvitationsList =
             ListGuardianInvitationsResponse
        type Scopes UserProFilesGuardianInvitationsList = '[]
        requestClient
          UserProFilesGuardianInvitationsList'{..}
          = go _upfgilStudentId (_upfgilStates ^. _Default)
              _upfgilXgafv
              _upfgilUploadProtocol
              (Just _upfgilPp)
              _upfgilAccessToken
              _upfgilUploadType
              _upfgilBearerToken
              _upfgilInvitedEmailAddress
              _upfgilPageToken
              _upfgilPageSize
              _upfgilCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy UserProFilesGuardianInvitationsListResource)
                      mempty
