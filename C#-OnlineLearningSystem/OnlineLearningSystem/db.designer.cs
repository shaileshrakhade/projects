﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OnlineLearningSystem
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="OnlineLearningSystem")]
	public partial class dbDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertAuthentication(Authentication instance);
    partial void UpdateAuthentication(Authentication instance);
    partial void DeleteAuthentication(Authentication instance);
    partial void InserttblMesssage(tblMesssage instance);
    partial void UpdatetblMesssage(tblMesssage instance);
    partial void DeletetblMesssage(tblMesssage instance);
    partial void InserttblVideo(tblVideo instance);
    partial void UpdatetblVideo(tblVideo instance);
    partial void DeletetblVideo(tblVideo instance);
    partial void InsertUserType(UserType instance);
    partial void UpdateUserType(UserType instance);
    partial void DeleteUserType(UserType instance);
    partial void InserttblProfile(tblProfile instance);
    partial void UpdatetblProfile(tblProfile instance);
    partial void DeletetblProfile(tblProfile instance);
    partial void InsertmstClass(mstClass instance);
    partial void UpdatemstClass(mstClass instance);
    partial void DeletemstClass(mstClass instance);
    partial void InserttblNotice(tblNotice instance);
    partial void UpdatetblNotice(tblNotice instance);
    partial void DeletetblNotice(tblNotice instance);
    #endregion
		
		public dbDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["OnlineLearningSystemConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public dbDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public dbDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Authentication> Authentications
		{
			get
			{
				return this.GetTable<Authentication>();
			}
		}
		
		public System.Data.Linq.Table<tblMesssage> tblMesssages
		{
			get
			{
				return this.GetTable<tblMesssage>();
			}
		}
		
		public System.Data.Linq.Table<tblVideo> tblVideos
		{
			get
			{
				return this.GetTable<tblVideo>();
			}
		}
		
		public System.Data.Linq.Table<UserType> UserTypes
		{
			get
			{
				return this.GetTable<UserType>();
			}
		}
		
		public System.Data.Linq.Table<tblProfile> tblProfiles
		{
			get
			{
				return this.GetTable<tblProfile>();
			}
		}
		
		public System.Data.Linq.Table<mstClass> mstClasses
		{
			get
			{
				return this.GetTable<mstClass>();
			}
		}
		
		public System.Data.Linq.Table<tblNotice> tblNotices
		{
			get
			{
				return this.GetTable<tblNotice>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Authentication")]
	public partial class Authentication : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _UserName;
		
		private string _Password;
		
		private System.Nullable<int> _UserType;
		
		private System.Nullable<bool> _IsActive;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnUserNameChanging(string value);
    partial void OnUserNameChanged();
    partial void OnPasswordChanging(string value);
    partial void OnPasswordChanged();
    partial void OnUserTypeChanging(System.Nullable<int> value);
    partial void OnUserTypeChanged();
    partial void OnIsActiveChanging(System.Nullable<bool> value);
    partial void OnIsActiveChanged();
    #endregion
		
		public Authentication()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="NVarChar(50)")]
		public string UserName
		{
			get
			{
				return this._UserName;
			}
			set
			{
				if ((this._UserName != value))
				{
					this.OnUserNameChanging(value);
					this.SendPropertyChanging();
					this._UserName = value;
					this.SendPropertyChanged("UserName");
					this.OnUserNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Password", DbType="NVarChar(50)")]
		public string Password
		{
			get
			{
				return this._Password;
			}
			set
			{
				if ((this._Password != value))
				{
					this.OnPasswordChanging(value);
					this.SendPropertyChanging();
					this._Password = value;
					this.SendPropertyChanged("Password");
					this.OnPasswordChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserType", DbType="Int")]
		public System.Nullable<int> UserType
		{
			get
			{
				return this._UserType;
			}
			set
			{
				if ((this._UserType != value))
				{
					this.OnUserTypeChanging(value);
					this.SendPropertyChanging();
					this._UserType = value;
					this.SendPropertyChanged("UserType");
					this.OnUserTypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsActive", DbType="Bit")]
		public System.Nullable<bool> IsActive
		{
			get
			{
				return this._IsActive;
			}
			set
			{
				if ((this._IsActive != value))
				{
					this.OnIsActiveChanging(value);
					this.SendPropertyChanging();
					this._IsActive = value;
					this.SendPropertyChanged("IsActive");
					this.OnIsActiveChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tblMesssages")]
	public partial class tblMesssage : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private System.Nullable<int> _StaffId;
		
		private System.Nullable<int> _StudentId;
		
		private string _MessageText;
		
		private System.Nullable<bool> _isDelete;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnStaffIdChanging(System.Nullable<int> value);
    partial void OnStaffIdChanged();
    partial void OnStudentIdChanging(System.Nullable<int> value);
    partial void OnStudentIdChanged();
    partial void OnMessageTextChanging(string value);
    partial void OnMessageTextChanged();
    partial void OnisDeleteChanging(System.Nullable<bool> value);
    partial void OnisDeleteChanged();
    #endregion
		
		public tblMesssage()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StaffId", DbType="Int")]
		public System.Nullable<int> StaffId
		{
			get
			{
				return this._StaffId;
			}
			set
			{
				if ((this._StaffId != value))
				{
					this.OnStaffIdChanging(value);
					this.SendPropertyChanging();
					this._StaffId = value;
					this.SendPropertyChanged("StaffId");
					this.OnStaffIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StudentId", DbType="Int")]
		public System.Nullable<int> StudentId
		{
			get
			{
				return this._StudentId;
			}
			set
			{
				if ((this._StudentId != value))
				{
					this.OnStudentIdChanging(value);
					this.SendPropertyChanging();
					this._StudentId = value;
					this.SendPropertyChanged("StudentId");
					this.OnStudentIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MessageText", DbType="NVarChar(MAX)")]
		public string MessageText
		{
			get
			{
				return this._MessageText;
			}
			set
			{
				if ((this._MessageText != value))
				{
					this.OnMessageTextChanging(value);
					this.SendPropertyChanging();
					this._MessageText = value;
					this.SendPropertyChanged("MessageText");
					this.OnMessageTextChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_isDelete", DbType="Bit")]
		public System.Nullable<bool> isDelete
		{
			get
			{
				return this._isDelete;
			}
			set
			{
				if ((this._isDelete != value))
				{
					this.OnisDeleteChanging(value);
					this.SendPropertyChanging();
					this._isDelete = value;
					this.SendPropertyChanged("isDelete");
					this.OnisDeleteChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tblVideos")]
	public partial class tblVideo : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _VideoName;
		
		private string _InfrormationOfVideo;
		
		private System.Nullable<int> _StaffId;
		
		private string _VideoUrl;
		
		private System.Nullable<bool> _IsActive;
		
		private System.Nullable<int> _ClassId;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnVideoNameChanging(string value);
    partial void OnVideoNameChanged();
    partial void OnInfrormationOfVideoChanging(string value);
    partial void OnInfrormationOfVideoChanged();
    partial void OnStaffIdChanging(System.Nullable<int> value);
    partial void OnStaffIdChanged();
    partial void OnVideoUrlChanging(string value);
    partial void OnVideoUrlChanged();
    partial void OnIsActiveChanging(System.Nullable<bool> value);
    partial void OnIsActiveChanged();
    partial void OnClassIdChanging(System.Nullable<int> value);
    partial void OnClassIdChanged();
    #endregion
		
		public tblVideo()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_VideoName", DbType="NVarChar(50)")]
		public string VideoName
		{
			get
			{
				return this._VideoName;
			}
			set
			{
				if ((this._VideoName != value))
				{
					this.OnVideoNameChanging(value);
					this.SendPropertyChanging();
					this._VideoName = value;
					this.SendPropertyChanged("VideoName");
					this.OnVideoNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_InfrormationOfVideo", DbType="NVarChar(MAX)")]
		public string InfrormationOfVideo
		{
			get
			{
				return this._InfrormationOfVideo;
			}
			set
			{
				if ((this._InfrormationOfVideo != value))
				{
					this.OnInfrormationOfVideoChanging(value);
					this.SendPropertyChanging();
					this._InfrormationOfVideo = value;
					this.SendPropertyChanged("InfrormationOfVideo");
					this.OnInfrormationOfVideoChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StaffId", DbType="Int")]
		public System.Nullable<int> StaffId
		{
			get
			{
				return this._StaffId;
			}
			set
			{
				if ((this._StaffId != value))
				{
					this.OnStaffIdChanging(value);
					this.SendPropertyChanging();
					this._StaffId = value;
					this.SendPropertyChanged("StaffId");
					this.OnStaffIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_VideoUrl", DbType="NVarChar(MAX)")]
		public string VideoUrl
		{
			get
			{
				return this._VideoUrl;
			}
			set
			{
				if ((this._VideoUrl != value))
				{
					this.OnVideoUrlChanging(value);
					this.SendPropertyChanging();
					this._VideoUrl = value;
					this.SendPropertyChanged("VideoUrl");
					this.OnVideoUrlChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsActive", DbType="Bit")]
		public System.Nullable<bool> IsActive
		{
			get
			{
				return this._IsActive;
			}
			set
			{
				if ((this._IsActive != value))
				{
					this.OnIsActiveChanging(value);
					this.SendPropertyChanging();
					this._IsActive = value;
					this.SendPropertyChanged("IsActive");
					this.OnIsActiveChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ClassId", DbType="Int")]
		public System.Nullable<int> ClassId
		{
			get
			{
				return this._ClassId;
			}
			set
			{
				if ((this._ClassId != value))
				{
					this.OnClassIdChanging(value);
					this.SendPropertyChanging();
					this._ClassId = value;
					this.SendPropertyChanged("ClassId");
					this.OnClassIdChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.UserType")]
	public partial class UserType : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _UserName;
		
		private System.Nullable<bool> _IsActive;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnUserNameChanging(string value);
    partial void OnUserNameChanged();
    partial void OnIsActiveChanging(System.Nullable<bool> value);
    partial void OnIsActiveChanged();
    #endregion
		
		public UserType()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserName", DbType="NVarChar(50)")]
		public string UserName
		{
			get
			{
				return this._UserName;
			}
			set
			{
				if ((this._UserName != value))
				{
					this.OnUserNameChanging(value);
					this.SendPropertyChanging();
					this._UserName = value;
					this.SendPropertyChanged("UserName");
					this.OnUserNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsActive", DbType="Bit")]
		public System.Nullable<bool> IsActive
		{
			get
			{
				return this._IsActive;
			}
			set
			{
				if ((this._IsActive != value))
				{
					this.OnIsActiveChanging(value);
					this.SendPropertyChanging();
					this._IsActive = value;
					this.SendPropertyChanged("IsActive");
					this.OnIsActiveChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tblProfile")]
	public partial class tblProfile : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _Name;
		
		private string _address;
		
		private string _mobile;
		
		private string _email;
		
		private string _education;
		
		private System.Nullable<int> _authenticationId;
		
		private System.Nullable<int> _usertype;
		
		private System.Nullable<int> _Stream;
		
		private System.Nullable<bool> _IsActive;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnNameChanging(string value);
    partial void OnNameChanged();
    partial void OnaddressChanging(string value);
    partial void OnaddressChanged();
    partial void OnmobileChanging(string value);
    partial void OnmobileChanged();
    partial void OnemailChanging(string value);
    partial void OnemailChanged();
    partial void OneducationChanging(string value);
    partial void OneducationChanged();
    partial void OnauthenticationIdChanging(System.Nullable<int> value);
    partial void OnauthenticationIdChanged();
    partial void OnusertypeChanging(System.Nullable<int> value);
    partial void OnusertypeChanged();
    partial void OnStreamChanging(System.Nullable<int> value);
    partial void OnStreamChanged();
    partial void OnIsActiveChanging(System.Nullable<bool> value);
    partial void OnIsActiveChanged();
    #endregion
		
		public tblProfile()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Name", DbType="NVarChar(50)")]
		public string Name
		{
			get
			{
				return this._Name;
			}
			set
			{
				if ((this._Name != value))
				{
					this.OnNameChanging(value);
					this.SendPropertyChanging();
					this._Name = value;
					this.SendPropertyChanged("Name");
					this.OnNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_address", DbType="NVarChar(50)")]
		public string address
		{
			get
			{
				return this._address;
			}
			set
			{
				if ((this._address != value))
				{
					this.OnaddressChanging(value);
					this.SendPropertyChanging();
					this._address = value;
					this.SendPropertyChanged("address");
					this.OnaddressChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_mobile", DbType="NVarChar(50)")]
		public string mobile
		{
			get
			{
				return this._mobile;
			}
			set
			{
				if ((this._mobile != value))
				{
					this.OnmobileChanging(value);
					this.SendPropertyChanging();
					this._mobile = value;
					this.SendPropertyChanged("mobile");
					this.OnmobileChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_email", DbType="NVarChar(50)")]
		public string email
		{
			get
			{
				return this._email;
			}
			set
			{
				if ((this._email != value))
				{
					this.OnemailChanging(value);
					this.SendPropertyChanging();
					this._email = value;
					this.SendPropertyChanged("email");
					this.OnemailChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_education", DbType="NVarChar(50)")]
		public string education
		{
			get
			{
				return this._education;
			}
			set
			{
				if ((this._education != value))
				{
					this.OneducationChanging(value);
					this.SendPropertyChanging();
					this._education = value;
					this.SendPropertyChanged("education");
					this.OneducationChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_authenticationId", DbType="Int")]
		public System.Nullable<int> authenticationId
		{
			get
			{
				return this._authenticationId;
			}
			set
			{
				if ((this._authenticationId != value))
				{
					this.OnauthenticationIdChanging(value);
					this.SendPropertyChanging();
					this._authenticationId = value;
					this.SendPropertyChanged("authenticationId");
					this.OnauthenticationIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_usertype", DbType="Int")]
		public System.Nullable<int> usertype
		{
			get
			{
				return this._usertype;
			}
			set
			{
				if ((this._usertype != value))
				{
					this.OnusertypeChanging(value);
					this.SendPropertyChanging();
					this._usertype = value;
					this.SendPropertyChanged("usertype");
					this.OnusertypeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Stream", DbType="Int")]
		public System.Nullable<int> Stream
		{
			get
			{
				return this._Stream;
			}
			set
			{
				if ((this._Stream != value))
				{
					this.OnStreamChanging(value);
					this.SendPropertyChanging();
					this._Stream = value;
					this.SendPropertyChanged("Stream");
					this.OnStreamChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsActive", DbType="Bit")]
		public System.Nullable<bool> IsActive
		{
			get
			{
				return this._IsActive;
			}
			set
			{
				if ((this._IsActive != value))
				{
					this.OnIsActiveChanging(value);
					this.SendPropertyChanging();
					this._IsActive = value;
					this.SendPropertyChanged("IsActive");
					this.OnIsActiveChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.mstClass")]
	public partial class mstClass : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _ClassName;
		
		private System.Nullable<bool> _IsActive;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnClassNameChanging(string value);
    partial void OnClassNameChanged();
    partial void OnIsActiveChanging(System.Nullable<bool> value);
    partial void OnIsActiveChanged();
    #endregion
		
		public mstClass()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ClassName", DbType="NVarChar(50)")]
		public string ClassName
		{
			get
			{
				return this._ClassName;
			}
			set
			{
				if ((this._ClassName != value))
				{
					this.OnClassNameChanging(value);
					this.SendPropertyChanging();
					this._ClassName = value;
					this.SendPropertyChanged("ClassName");
					this.OnClassNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsActive", DbType="Bit")]
		public System.Nullable<bool> IsActive
		{
			get
			{
				return this._IsActive;
			}
			set
			{
				if ((this._IsActive != value))
				{
					this.OnIsActiveChanging(value);
					this.SendPropertyChanging();
					this._IsActive = value;
					this.SendPropertyChanged("IsActive");
					this.OnIsActiveChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tblNotice")]
	public partial class tblNotice : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private string _NoticeText;
		
		private System.Nullable<int> _StaffAuthetication;
		
		private System.Nullable<bool> _IsDelete;
		
		private System.Nullable<int> _UserType;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnNoticeTextChanging(string value);
    partial void OnNoticeTextChanged();
    partial void OnStaffAutheticationChanging(System.Nullable<int> value);
    partial void OnStaffAutheticationChanged();
    partial void OnIsDeleteChanging(System.Nullable<bool> value);
    partial void OnIsDeleteChanged();
    partial void OnUserTypeChanging(System.Nullable<int> value);
    partial void OnUserTypeChanged();
    #endregion
		
		public tblNotice()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NoticeText", DbType="NVarChar(MAX)")]
		public string NoticeText
		{
			get
			{
				return this._NoticeText;
			}
			set
			{
				if ((this._NoticeText != value))
				{
					this.OnNoticeTextChanging(value);
					this.SendPropertyChanging();
					this._NoticeText = value;
					this.SendPropertyChanged("NoticeText");
					this.OnNoticeTextChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_StaffAuthetication", DbType="Int")]
		public System.Nullable<int> StaffAuthetication
		{
			get
			{
				return this._StaffAuthetication;
			}
			set
			{
				if ((this._StaffAuthetication != value))
				{
					this.OnStaffAutheticationChanging(value);
					this.SendPropertyChanging();
					this._StaffAuthetication = value;
					this.SendPropertyChanged("StaffAuthetication");
					this.OnStaffAutheticationChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsDelete", DbType="Bit")]
		public System.Nullable<bool> IsDelete
		{
			get
			{
				return this._IsDelete;
			}
			set
			{
				if ((this._IsDelete != value))
				{
					this.OnIsDeleteChanging(value);
					this.SendPropertyChanging();
					this._IsDelete = value;
					this.SendPropertyChanged("IsDelete");
					this.OnIsDeleteChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UserType", DbType="Int")]
		public System.Nullable<int> UserType
		{
			get
			{
				return this._UserType;
			}
			set
			{
				if ((this._UserType != value))
				{
					this.OnUserTypeChanging(value);
					this.SendPropertyChanging();
					this._UserType = value;
					this.SendPropertyChanged("UserType");
					this.OnUserTypeChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591