package constants

const (
	KFilePathSuffix                      = ".k"
	TarPathSuffix                        = ".tar"
	OciScheme                            = "oci"
	FileEntry                            = "file"
	FileWithKclModEntry                  = "file_with_kcl_mod"
	UrlEntry                             = "url"
	RefEntry                             = "ref"
	TarEntry                             = "tar"
	KCL_MOD                              = "kcl.mod"
	OCI_SEPARATOR                        = ":"
	KCL_PKG_TAR                          = "*.tar"
	DEFAULT_KCL_FILE_NAME                = "main.k"
	DEFAULT_KCL_FILE_CONTENT             = "The_first_kcl_program = 'Hello World!'"
	DEFAULT_KCL_OCI_MANIFEST_NAME        = "org.kcllang.package.name"
	DEFAULT_KCL_OCI_MANIFEST_VERSION     = "org.kcllang.package.version"
	DEFAULT_KCL_OCI_MANIFEST_DESCRIPTION = "org.kcllang.package.description"
	DEFAULT_KCL_OCI_MANIFEST_SUM         = "org.kcllang.package.sum"
	DEFAULT_CREATE_OCI_MANIFEST_TIME     = "org.opencontainers.image.created"

	// The pattern of the external package argument.
	EXTERNAL_PKGS_ARG_PATTERN = "%s=%s"
)
