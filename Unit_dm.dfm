object DM_MTJS: TDM_MTJS
  OldCreateOrder = False
  Height = 150
  Width = 215
  object db_mtjs: TDatabase
    AliasName = 'hospital'
    DatabaseName = 'mtjs'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME=mtjs_user'
      'ODBC DSN=hospital'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'SQLQRYMODE='
      'LANGDRIVER='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'PASSWORD=pwd_mtjs')
    SessionName = 'Default'
    Left = 120
    Top = 64
  end
end
