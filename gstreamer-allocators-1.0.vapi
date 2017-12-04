/* gstreamer-allocators-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstAllocators", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	namespace Allocators {
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "GstDmaBufAllocator", lower_case_cprefix = "gst_dmabuf_allocator_", lower_case_csuffix = "dmabuf_allocator", type_id = "gst_dmabuf_allocator_get_type ()")]
		[GIR (name = "DmaBufAllocator")]
		[Version (since = "1.12")]
		public class DmaBufAllocator : Gst.Allocators.FdAllocator {
			[CCode (has_construct_function = false, type = "GstAllocator*")]
			[Version (since = "1.2")]
			public DmaBufAllocator ();
			[Version (since = "1.2")]
			public static Gst.Memory alloc (Gst.Allocator allocator, int fd, size_t size);
		}
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "GstFdAllocator", lower_case_cprefix = "gst_fd_allocator_", type_id = "gst_fd_allocator_get_type ()")]
		[GIR (name = "FdAllocator")]
		[Version (since = "1.6")]
		public class FdAllocator : Gst.Allocator {
			[CCode (has_construct_function = false, type = "GstAllocator*")]
			public FdAllocator ();
			public static Gst.Memory alloc (Gst.Allocator allocator, int fd, size_t size, Gst.Allocators.FdMemoryFlags flags);
		}
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "GstFdMemoryFlags", cprefix = "GST_FD_MEMORY_FLAG_", has_type_id = false)]
		[Flags]
		[GIR (name = "FdMemoryFlags")]
		[Version (since = "1.6")]
		public enum FdMemoryFlags {
			NONE,
			KEEP_MAPPED,
			MAP_PRIVATE,
			DONT_CLOSE
		}
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "GST_ALLOCATOR_DMABUF")]
		public const string ALLOCATOR_DMABUF;
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "GST_ALLOCATOR_FD")]
		public const string ALLOCATOR_FD;
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "GST_CAPS_FEATURE_MEMORY_DMABUF")]
		[Version (since = "1.11")]
		public const string CAPS_FEATURE_MEMORY_DMABUF;
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "gst_dmabuf_memory_get_fd")]
		[Version (since = "1.2")]
		public static int dmabuf_memory_get_fd (Gst.Memory mem);
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "gst_fd_memory_get_fd")]
		[Version (since = "1.6")]
		public static int fd_memory_get_fd (Gst.Memory mem);
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "gst_is_dmabuf_memory")]
		[Version (since = "1.2")]
		public static bool is_dmabuf_memory (Gst.Memory mem);
		[CCode (cheader_filename = "gst/allocators/allocators.h", cname = "gst_is_fd_memory")]
		[Version (since = "1.6")]
		public static bool is_fd_memory (Gst.Memory mem);
	}
}