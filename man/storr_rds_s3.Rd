% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/driver_rds_s3.R
\name{storr_rds_s3}
\alias{storr_rds_s3}
\title{S3 backend for rds object cache driver}
\usage{
storr_rds_s3(bucket, path, compress = NULL, mangle_key = NULL,
  mangle_key_pad = NULL, hash_algorithm = NULL,
  default_namespace = "objects")
}
\arguments{
\item{bucket}{Name of the S3 bucket for which you wish to create of connect
store}

\item{path}{Path for the store.  \code{tempdir()} is a good choice
for ephemeral storage, The \code{rappdirs} package (on CRAN)
might be nice for persistent application data.}

\item{compress}{Compress the generated file?  This saves a small
amount of space for a reasonable amount of time.}

\item{mangle_key}{Mangle keys?  If TRUE, then the key is encoded
using base64 before saving to the filesystem.  See Details.}

\item{mangle_key_pad}{Logical indicating if the filenames created
when using \code{mangle_key} should also be "padded" with the
\code{=} character to make up a round number of bytes.  Padding
is required to satisfy the document that describes base64
encoding (RFC 4648) but can cause problems in some applications
(see \href{{https://github.com/richfitz/storr/issues/43}{this
issue}}.  The default is to not pad \emph{new} storr archives.
This should be generally safe to leave alone.}

\item{hash_algorithm}{Name of the hash algorithm to use.  Possible
values are "md5", "sha1", and others supported by
\code{\link{digest}}.  If not given, then we will default to
"md5".}

\item{default_namespace}{Default namespace (see
\code{\link{storr}}).}
}
