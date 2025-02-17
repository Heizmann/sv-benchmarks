extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int gfp_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct completion;
struct page;
struct task_struct;
struct file;
struct arch_spinlock;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct vm_area_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned char active : 1 ;
};
enum xp_retval {
    xpSuccess = 0,
    xpNotConnected = 1,
    xpConnected = 2,
    xpRETIRED1 = 3,
    xpMsgReceived = 4,
    xpMsgDelivered = 5,
    xpRETIRED2 = 6,
    xpNoWait = 7,
    xpRetry = 8,
    xpTimeout = 9,
    xpInterrupted = 10,
    xpUnequalMsgSizes = 11,
    xpInvalidAddress = 12,
    xpNoMemory = 13,
    xpLackOfResources = 14,
    xpUnregistered = 15,
    xpAlreadyRegistered = 16,
    xpPartitionDown = 17,
    xpNotLoaded = 18,
    xpUnloading = 19,
    xpBadMagic = 20,
    xpReactivating = 21,
    xpUnregistering = 22,
    xpOtherUnregistering = 23,
    xpCloneKThread = 24,
    xpCloneKThreadFailed = 25,
    xpNoHeartbeat = 26,
    xpPioReadError = 27,
    xpPhysAddrRegFailed = 28,
    xpRETIRED3 = 29,
    xpRETIRED4 = 30,
    xpRETIRED5 = 31,
    xpRETIRED6 = 32,
    xpRETIRED7 = 33,
    xpRETIRED8 = 34,
    xpRETIRED9 = 35,
    xpRETIRED10 = 36,
    xpRETIRED11 = 37,
    xpRETIRED12 = 38,
    xpBadVersion = 39,
    xpVarsNotSet = 40,
    xpNoRsvdPageAddr = 41,
    xpInvalidPartid = 42,
    xpLocalPartid = 43,
    xpOtherGoingDown = 44,
    xpSystemGoingDown = 45,
    xpSystemHalt = 46,
    xpSystemReboot = 47,
    xpSystemPoweroff = 48,
    xpDisconnecting = 49,
    xpOpenCloseError = 50,
    xpDisconnected = 51,
    xpBteCopyError = 52,
    xpSalError = 53,
    xpRsvdPageNotSet = 54,
    xpPayloadTooBig = 55,
    xpUnsupported = 56,
    xpNeedMoreInfo = 57,
    xpGruCopyError = 58,
    xpGruSendMqError = 59,
    xpBadChannelNumber = 60,
    xpBadMsgType = 61,
    xpBiosError = 62,
    xpUnknownReason = 63
} ;
struct xpc_registration {
   struct mutex mutex ;
   void (*func)(enum xp_retval , short , int , void * , void * ) ;
   void *key ;
   u16 nentries ;
   u16 entry_size ;
   u32 assigned_limit ;
   u32 idle_limit ;
};
struct xpc_interface {
   void (*connect)(int ) ;
   void (*disconnect)(int ) ;
   enum xp_retval (*send)(short , int , u32 , void * , u16 ) ;
   enum xp_retval (*send_notify)(short , int , u32 , void * , u16 , void (*)(enum xp_retval ,
                                                                                 short ,
                                                                                 int ,
                                                                                 void * ) ,
                                 void * ) ;
   void (*received)(short , int , void * ) ;
   enum xp_retval (*partid_to_nasids)(short , void * ) ;
};
typedef signed char __s8;
typedef short __s16;
typedef int __s32;
typedef int s32;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_time_t time_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int fmode_t;
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct pid;
struct timespec;
struct seq_file;
struct seq_operations;
struct __anonstruct_ldv_5914_31 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_30 {
   s64 lock ;
   struct __anonstruct_ldv_5914_31 ldv_5914 ;
};
typedef union __anonunion_arch_rwlock_t_30 arch_rwlock_t;
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct cred;
struct uv_scir_s {
   struct timer_list timer ;
   unsigned long offset ;
   unsigned long last ;
   unsigned long idle_on ;
   unsigned long idle_off ;
   unsigned char state ;
   unsigned char enabled ;
};
struct uv_hub_info_s {
   unsigned long global_mmr_base ;
   unsigned long gpa_mask ;
   unsigned int gnode_extra ;
   unsigned char hub_revision ;
   unsigned char apic_pnode_shift ;
   unsigned char m_shift ;
   unsigned char n_lshift ;
   unsigned long gnode_upper ;
   unsigned long lowmem_remap_top ;
   unsigned long lowmem_remap_base ;
   unsigned short pnode ;
   unsigned short pnode_mask ;
   unsigned short coherency_domain_number ;
   unsigned short numa_blade_id ;
   unsigned char blade_processor_id ;
   unsigned char m_val ;
   unsigned char n_val ;
   struct uv_scir_s scir ;
};
struct uv_blade_info {
   unsigned short nr_possible_cpus ;
   unsigned short nr_online_cpus ;
   unsigned short pnode ;
   short memory_nid ;
   spinlock_t nmi_lock ;
   unsigned long nmi_count ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct path;
struct inode;
struct dentry;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct file_operations;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_136 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_136 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct writeback_control;
union __anonunion_arg_139 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_138 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_139 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_138 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_19449_140 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_19468_141 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_lock;
union __anonunion_ldv_19484_142 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_19449_140 ldv_19449 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_19468_141 ldv_19468 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_19484_142 ldv_19484 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   uid_t uid ;
   uid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_143 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_143 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_145 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_144 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_145 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_144 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
enum uv_memprotect {
    UV_MEMPROT_RESTRICT_ACCESS = 0,
    UV_MEMPROT_ALLOW_AMO = 1,
    UV_MEMPROT_ALLOW_RW = 2
} ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern int is_uv_system(void) ;
struct xpc_interface xpc_interface ;
void xpc_set_interface(void (*connect)(int ) , void (*disconnect)(int ) , enum xp_retval (*send)(short ,
                                                                                                   int ,
                                                                                                   u32 ,
                                                                                                   void * ,
                                                                                                   u16 ) ,
                       enum xp_retval (*send_notify)(short , int , u32 , void * ,
                                                     u16 , void (*)(enum xp_retval ,
                                                                     short , int ,
                                                                     void * ) , void * ) ,
                       void (*received)(short , int , void * ) , enum xp_retval (*partid_to_nasids)(short ,
                                                                                                      void * ) ) ;
void xpc_clear_interface(void) ;
enum xp_retval xpc_connect(int ch_number , void (*func)(enum xp_retval , short ,
                                                        int , void * , void * ) ,
                           void *key , u16 payload_size , u16 nentries , u32 assigned_limit ,
                           u32 idle_limit ) ;
void xpc_disconnect(int ch_number ) ;
short xp_max_npartitions ;
short xp_partition_id ;
u8 xp_region_size ;
unsigned long (*xp_pa)(void * ) ;
unsigned long (*xp_socket_pa)(unsigned long ) ;
enum xp_retval (*xp_remote_memcpy)(unsigned long , unsigned long const , size_t ) ;
int (*xp_cpu_to_nasid)(int ) ;
enum xp_retval (*xp_expand_memprotect)(unsigned long , unsigned long ) ;
enum xp_retval (*xp_restrict_memprotect)(unsigned long , unsigned long ) ;
struct device *xp ;
enum xp_retval xp_init_uv(void) ;
void xp_exit_uv(void) ;
struct device_driver xp_dbg_name =
     {"xp", (struct bus_type *)0, (struct module *)0, (char const *)0, (_Bool)0, (struct of_device_id const *)0,
    (int (*)(struct device * ))0, (int (*)(struct device * ))0, (void (*)(struct device * ))0,
    (int (*)(struct device * , pm_message_t ))0, (int (*)(struct device * ))0, (struct attribute_group const **)0,
    (struct dev_pm_ops const *)0, (struct driver_private *)0};
struct device xp_dbg_subname =
     {(struct device *)0, (struct device_private *)0, {(char const *)0, {(struct list_head *)0,
                                                                         (struct list_head *)0},
                                                     (struct kobject *)0, (struct kset *)0,
                                                     (struct kobj_type *)0, (struct sysfs_dirent *)0,
                                                     {{0}}, (unsigned char)0, (unsigned char)0,
                                                     (unsigned char)0, (unsigned char)0,
                                                     (unsigned char)0}, "", (struct device_type const *)0,
    {{0}, {{{{{0U}}, 0U, 0U, (void *)0, {(struct lock_class_key *)0, {(struct lock_class *)0,
                                                                      (struct lock_class *)0},
                                         (char const *)0, 0, 0UL}}}}, {(struct list_head *)0,
                                                                         (struct list_head *)0},
     (struct task_struct *)0, (char const *)0, (void *)0, {(struct lock_class_key *)0,
                                                             {(struct lock_class *)0,
                                                              (struct lock_class *)0},
                                                             (char const *)0, 0,
                                                             0UL}}, (struct bus_type *)0,
    & xp_dbg_name, (void *)0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0,
                               (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, (void *)0, {(struct lock_class_key *)0,
                                                                                  {(struct lock_class *)0,
                                                                                   (struct lock_class *)0},
                                                                                  (char const *)0,
                                                                                  0,
                                                                                  0UL}}}},
                               {(struct list_head *)0, (struct list_head *)0}, {0U,
                                                                                {{{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    (void *)0,
                                                                                    {(struct lock_class_key *)0,
                                                                                     {(struct lock_class *)0,
                                                                                      (struct lock_class *)0},
                                                                                     (char const *)0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {(struct list_head *)0,
                                                                                  (struct list_head *)0}}},
                               (struct wakeup_source *)0, (_Bool)0, {{(struct list_head *)0,
                                                                      (struct list_head *)0},
                                                                     0UL, (struct tvec_base *)0,
                                                                     (void (*)(unsigned long ))0,
                                                                     0UL, 0, 0, (void *)0,
                                                                     {(char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0,
                                                                      (char)0, (char)0},
                                                                     {(struct lock_class_key *)0,
                                                                      {(struct lock_class *)0,
                                                                       (struct lock_class *)0},
                                                                      (char const *)0,
                                                                      0, 0UL}}, 0UL,
                               {{0L}, {(struct list_head *)0, (struct list_head *)0},
                                (void (*)(struct work_struct * ))0, {(struct lock_class_key *)0,
                                                                     {(struct lock_class *)0,
                                                                      (struct lock_class *)0},
                                                                     (char const *)0,
                                                                     0, 0UL}}, {{{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   (void *)0,
                                                                                   {(struct lock_class_key *)0,
                                                                                    {(struct lock_class *)0,
                                                                                     (struct lock_class *)0},
                                                                                    (char const *)0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {(struct list_head *)0,
                                                                                 (struct list_head *)0}},
                               {0}, {0}, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                               (unsigned char)0, (unsigned char)0, (unsigned char)0,
                               (unsigned char)0, (unsigned char)0, (unsigned char)0,
                               (unsigned char)0, 0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, {0LL},
                               0LL, (struct dev_pm_qos_request *)0, (struct pm_subsys_data *)0,
                               (struct pm_qos_constraints *)0}, (struct dev_pm_domain *)0,
    0, (u64 *)0, 0ULL, (struct device_dma_parameters *)0, {(struct list_head *)0,
                                                           (struct list_head *)0},
    (struct dma_coherent_mem *)0, {(void *)0, (struct dma_map_ops *)0, (void *)0},
    (struct device_node *)0, 0U, 0U, {{{{{0U}}, 0U, 0U, (void *)0, {(struct lock_class_key *)0,
                                                                    {(struct lock_class *)0,
                                                                     (struct lock_class *)0},
                                                                    (char const *)0,
                                                                    0, 0UL}}}}, {(struct list_head *)0,
                                                                                 (struct list_head *)0},
    {(void *)0, {(struct list_head *)0, (struct list_head *)0}, {{0}}}, (struct class *)0,
    (struct attribute_group const **)0, (void (*)(struct device * ))0};
struct device *xp = & xp_dbg_subname;
struct xpc_registration xpc_registrations[2U] ;
static enum xp_retval xpc_notloaded(void)
{
  {
  return ((enum xp_retval )18);
}
}
struct xpc_interface xpc_interface = {(void (*)(int ))(& xpc_notloaded), (void (*)(int ))(& xpc_notloaded), (enum xp_retval (*)(short ,
                                                                                                int ,
                                                                                                u32 ,
                                                                                                void * ,
                                                                                                u16 ))(& xpc_notloaded),
    (enum xp_retval (*)(short , int , u32 , void * , u16 , void (*)(enum xp_retval ,
                                                                        short , int ,
                                                                        void * ) ,
                        void * ))(& xpc_notloaded), (void (*)(short , int , void * ))(& xpc_notloaded),
    (enum xp_retval (*)(short , void * ))(& xpc_notloaded)};
void xpc_set_interface(void (*connect)(int ) , void (*disconnect)(int ) , enum xp_retval (*send)(short ,
                                                                                                   int ,
                                                                                                   u32 ,
                                                                                                   void * ,
                                                                                                   u16 ) ,
                       enum xp_retval (*send_notify)(short , int , u32 , void * ,
                                                     u16 , void (*)(enum xp_retval ,
                                                                     short , int ,
                                                                     void * ) , void * ) ,
                       void (*received)(short , int , void * ) , enum xp_retval (*partid_to_nasids)(short ,
                                                                                                      void * ) )
{ struct xpc_interface *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  {
  __cil_tmp7 = & xpc_interface;
  *((void (**)(int ))__cil_tmp7) = connect;
  __cil_tmp8 = (unsigned long )(& xpc_interface) + 8;
  *((void (**)(int ))__cil_tmp8) = disconnect;
  __cil_tmp9 = (unsigned long )(& xpc_interface) + 16;
  *((enum xp_retval (**)(short , int , u32 , void * , u16 ))__cil_tmp9) = send;
  __cil_tmp10 = (unsigned long )(& xpc_interface) + 24;
  *((enum xp_retval (**)(short , int , u32 , void * , u16 , void (*)(enum xp_retval ,
                                                                         short ,
                                                                         int , void * ) ,
                         void * ))__cil_tmp10) = send_notify;
  __cil_tmp11 = (unsigned long )(& xpc_interface) + 32;
  *((void (**)(short , int , void * ))__cil_tmp11) = received;
  __cil_tmp12 = (unsigned long )(& xpc_interface) + 40;
  *((enum xp_retval (**)(short , void * ))__cil_tmp12) = partid_to_nasids;
  return;
}
}
void xpc_clear_interface(void)
{ struct xpc_interface *__cil_tmp1 ;
  unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  {
  __cil_tmp1 = & xpc_interface;
  *((void (**)(int ))__cil_tmp1) = (void (*)(int ))(& xpc_notloaded);
  __cil_tmp2 = (unsigned long )(& xpc_interface) + 8;
  *((void (**)(int ))__cil_tmp2) = (void (*)(int ))(& xpc_notloaded);
  __cil_tmp3 = (unsigned long )(& xpc_interface) + 16;
  *((enum xp_retval (**)(short , int , u32 , void * , u16 ))__cil_tmp3) = (enum xp_retval (*)(short ,
                                                                                                  int ,
                                                                                                  u32 ,
                                                                                                  void * ,
                                                                                                  u16 ))(& xpc_notloaded);
  __cil_tmp4 = (unsigned long )(& xpc_interface) + 24;
  *((enum xp_retval (**)(short , int , u32 , void * , u16 , void (*)(enum xp_retval ,
                                                                         short ,
                                                                         int , void * ) ,
                         void * ))__cil_tmp4) = (enum xp_retval (*)(short , int ,
                                                                    u32 , void * ,
                                                                    u16 , void (*)(enum xp_retval ,
                                                                                    short ,
                                                                                    int ,
                                                                                    void * ) ,
                                                                    void * ))(& xpc_notloaded);
  __cil_tmp5 = (unsigned long )(& xpc_interface) + 32;
  *((void (**)(short , int , void * ))__cil_tmp5) = (void (*)(short , int , void * ))(& xpc_notloaded);
  __cil_tmp6 = (unsigned long )(& xpc_interface) + 40;
  *((enum xp_retval (**)(short , void * ))__cil_tmp6) = (enum xp_retval (*)(short ,
                                                                             void * ))(& xpc_notloaded);
  return;
}
}
enum xp_retval xpc_connect(int ch_number , void (*func)(enum xp_retval , short ,
                                                        int , void * , void * ) ,
                           void *key , u16 payload_size , u16 nentries , u32 assigned_limit ,
                           u32 idle_limit )
{ struct xpc_registration *registration ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___7 ;
  int tmp___8 ;
  int tmp___10 ;
  int tmp___11 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  struct xpc_registration *__cil_tmp27 ;
  struct mutex *__cil_tmp28 ;
  void (*__cil_tmp29)(enum xp_retval , short , int , void * , void * ) ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  void (*__cil_tmp33)(enum xp_retval , short , int , void * , void * ) ;
  unsigned long __cil_tmp34 ;
  struct mutex *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  short __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct mutex *__cil_tmp54 ;
  struct xpc_interface *__cil_tmp55 ;
  void (*__cil_tmp56)(int ) ;
  {
  {
  tmp___1 = is_uv_system();
  }
  if (tmp___1 != 0) {
    tmp___0 = 63;
  } else {
    tmp___0 = 127;
  }
  {
  tmp___4 = is_uv_system();
  }
  if (tmp___4 != 0) {
    tmp___3 = -64;
  } else {
    tmp___3 = -128;
  }
  {
  __cil_tmp22 = (int )payload_size;
  __cil_tmp23 = __cil_tmp22 + 16;
  __cil_tmp24 = __cil_tmp23 + tmp___0;
  __cil_tmp25 = __cil_tmp24 & tmp___3;
  if (__cil_tmp25 > 128) {
    return ((enum xp_retval )55);
  } else {
  }
  }
  {
  __cil_tmp26 = (unsigned long )ch_number;
  __cil_tmp27 = (struct xpc_registration *)(& xpc_registrations);
  registration = __cil_tmp27 + __cil_tmp26;
  __cil_tmp28 = (struct mutex *)registration;
  tmp___5 = mutex_lock_interruptible_nested(__cil_tmp28, 0U);
  }
  if (tmp___5 != 0) {
    return ((enum xp_retval )10);
  } else {
  }
  {
  __cil_tmp29 = (void (*)(enum xp_retval , short , int , void * , void * ))0;
  __cil_tmp30 = (unsigned long )__cil_tmp29;
  __cil_tmp31 = (unsigned long )registration;
  __cil_tmp32 = __cil_tmp31 + 168;
  __cil_tmp33 = *((void (**)(enum xp_retval , short , int , void * , void * ))__cil_tmp32);
  __cil_tmp34 = (unsigned long )__cil_tmp33;
  if (__cil_tmp34 != __cil_tmp30) {
    {
    __cil_tmp35 = (struct mutex *)registration;
    mutex_unlock(__cil_tmp35);
    }
    return ((enum xp_retval )16);
  } else {
  }
  }
  {
  tmp___8 = is_uv_system();
  }
  if (tmp___8 != 0) {
    tmp___7 = 63U;
  } else {
    tmp___7 = 127U;
  }
  {
  tmp___11 = is_uv_system();
  }
  if (tmp___11 != 0) {
    tmp___10 = -64;
  } else {
    tmp___10 = -128;
  }
  {
  __cil_tmp36 = (unsigned long )registration;
  __cil_tmp37 = __cil_tmp36 + 186;
  __cil_tmp38 = (unsigned int )payload_size;
  __cil_tmp39 = tmp___7 + __cil_tmp38;
  __cil_tmp40 = __cil_tmp39 + 16U;
  __cil_tmp41 = (short )__cil_tmp40;
  __cil_tmp42 = (int )__cil_tmp41;
  __cil_tmp43 = __cil_tmp42 & tmp___10;
  *((u16 *)__cil_tmp37) = (u16 )__cil_tmp43;
  __cil_tmp44 = (unsigned long )registration;
  __cil_tmp45 = __cil_tmp44 + 184;
  *((u16 *)__cil_tmp45) = nentries;
  __cil_tmp46 = (unsigned long )registration;
  __cil_tmp47 = __cil_tmp46 + 188;
  *((u32 *)__cil_tmp47) = assigned_limit;
  __cil_tmp48 = (unsigned long )registration;
  __cil_tmp49 = __cil_tmp48 + 192;
  *((u32 *)__cil_tmp49) = idle_limit;
  __cil_tmp50 = (unsigned long )registration;
  __cil_tmp51 = __cil_tmp50 + 176;
  *((void **)__cil_tmp51) = key;
  __cil_tmp52 = (unsigned long )registration;
  __cil_tmp53 = __cil_tmp52 + 168;
  *((void (**)(enum xp_retval , short , int , void * , void * ))__cil_tmp53) = func;
  __cil_tmp54 = (struct mutex *)registration;
  mutex_unlock(__cil_tmp54);
  __cil_tmp55 = & xpc_interface;
  __cil_tmp56 = *((void (**)(int ))__cil_tmp55);
  (*__cil_tmp56)(ch_number);
  }
  return ((enum xp_retval )0);
}
}
void xpc_disconnect(int ch_number )
{ struct xpc_registration *registration ;
  unsigned long __cil_tmp3 ;
  struct xpc_registration *__cil_tmp4 ;
  struct mutex *__cil_tmp5 ;
  void (*__cil_tmp6)(enum xp_retval , short , int , void * , void * ) ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void (*__cil_tmp10)(enum xp_retval , short , int , void * , void * ) ;
  unsigned long __cil_tmp11 ;
  struct mutex *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  void (*__cil_tmp26)(int ) ;
  struct mutex *__cil_tmp27 ;
  {
  {
  __cil_tmp3 = (unsigned long )ch_number;
  __cil_tmp4 = (struct xpc_registration *)(& xpc_registrations);
  registration = __cil_tmp4 + __cil_tmp3;
  __cil_tmp5 = (struct mutex *)registration;
  mutex_lock_nested(__cil_tmp5, 0U);
  }
  {
  __cil_tmp6 = (void (*)(enum xp_retval , short , int , void * , void * ))0;
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = (unsigned long )registration;
  __cil_tmp9 = __cil_tmp8 + 168;
  __cil_tmp10 = *((void (**)(enum xp_retval , short , int , void * , void * ))__cil_tmp9);
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  if (__cil_tmp11 == __cil_tmp7) {
    {
    __cil_tmp12 = (struct mutex *)registration;
    mutex_unlock(__cil_tmp12);
    }
    return;
  } else {
  }
  }
  {
  __cil_tmp13 = (unsigned long )registration;
  __cil_tmp14 = __cil_tmp13 + 168;
  *((void (**)(enum xp_retval , short , int , void * , void * ))__cil_tmp14) = (void (*)(enum xp_retval ,
                                                                                            short ,
                                                                                            int ,
                                                                                            void * ,
                                                                                            void * ))0;
  __cil_tmp15 = (unsigned long )registration;
  __cil_tmp16 = __cil_tmp15 + 176;
  *((void **)__cil_tmp16) = (void *)0;
  __cil_tmp17 = (unsigned long )registration;
  __cil_tmp18 = __cil_tmp17 + 184;
  *((u16 *)__cil_tmp18) = (u16 )0U;
  __cil_tmp19 = (unsigned long )registration;
  __cil_tmp20 = __cil_tmp19 + 186;
  *((u16 *)__cil_tmp20) = (u16 )0U;
  __cil_tmp21 = (unsigned long )registration;
  __cil_tmp22 = __cil_tmp21 + 188;
  *((u32 *)__cil_tmp22) = 0U;
  __cil_tmp23 = (unsigned long )registration;
  __cil_tmp24 = __cil_tmp23 + 192;
  *((u32 *)__cil_tmp24) = 0U;
  __cil_tmp25 = (unsigned long )(& xpc_interface) + 8;
  __cil_tmp26 = *((void (**)(int ))__cil_tmp25);
  (*__cil_tmp26)(ch_number);
  __cil_tmp27 = (struct mutex *)registration;
  mutex_unlock(__cil_tmp27);
  }
  return;
}
}
int xp_init(void)
{ enum xp_retval ret ;
  int ch_number ;
  struct lock_class_key __key ;
  int tmp ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct mutex *__cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  {
  ch_number = 0;
  goto ldv_15344;
  ldv_15343:
  {
  __cil_tmp5 = ch_number * 200UL;
  __cil_tmp6 = (unsigned long )(xpc_registrations) + __cil_tmp5;
  __cil_tmp7 = (struct mutex *)__cil_tmp6;
  __mutex_init(__cil_tmp7, "&xpc_registrations[ch_number].mutex", & __key);
  ch_number = ch_number + 1;
  }
  ldv_15344: ;
  if (ch_number <= 1) {
    goto ldv_15343;
  } else {
    goto ldv_15345;
  }
  ldv_15345:
  {
  tmp = is_uv_system();
  }
  if (tmp != 0) {
    {
    ret = xp_init_uv();
    }
  } else {
    ret = (enum xp_retval )0;
  }
  {
  __cil_tmp8 = (unsigned int )ret;
  if (__cil_tmp8 != 0U) {
    return ((int )ret);
  } else {
  }
  }
  return (0);
}
}
void xp_exit(void)
{ int tmp ;
  {
  {
  tmp = is_uv_system();
  }
  if (tmp != 0) {
    {
    xp_exit_uv();
    }
  } else {
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = xp_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_15378;
  ldv_15377:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  {
  goto switch_default;
  if (0) {
    switch_default: ;
    goto ldv_15376;
  } else {
    switch_break: ;
  }
  }
  ldv_15376: ;
  ldv_15378:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_15377;
  } else {
    goto ldv_15379;
  }
  ldv_15379: ;
  {
  xp_exit();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern unsigned long this_cpu_off ;
extern int dev_err(struct device const * , char const * , ...) ;
extern struct uv_hub_info_s __uv_hub_info ;
__inline static unsigned long uv_soc_phys_ram_to_gpa(unsigned long paddr )
{ unsigned long tcp_ptr__ ;
  void const *__vpp_verify ;
  unsigned long tcp_ptr_____0 ;
  void const *__vpp_verify___0 ;
  unsigned long tcp_ptr_____1 ;
  void const *__vpp_verify___1 ;
  unsigned long tcp_ptr_____2 ;
  void const *__vpp_verify___2 ;
  unsigned long tcp_ptr_____3 ;
  void const *__vpp_verify___3 ;
  unsigned long tcp_ptr_____4 ;
  void const *__vpp_verify___4 ;
  unsigned long tcp_ptr_____5 ;
  void const *__vpp_verify___5 ;
  struct uv_hub_info_s *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct uv_hub_info_s *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct uv_hub_info_s *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct uv_hub_info_s *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned char __cil_tmp31 ;
  int __cil_tmp32 ;
  struct uv_hub_info_s *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned char __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  struct uv_hub_info_s *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned char __cil_tmp43 ;
  int __cil_tmp44 ;
  struct uv_hub_info_s *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned char __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  {
  __vpp_verify___0 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____0): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  {
  __cil_tmp16 = (struct uv_hub_info_s *)tcp_ptr_____0;
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 32;
  __cil_tmp19 = *((unsigned long *)__cil_tmp18);
  if (__cil_tmp19 > paddr) {
    __vpp_verify = (void const *)0;
    __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off),
                         "0" (& __uv_hub_info));
    __cil_tmp20 = (struct uv_hub_info_s *)tcp_ptr__;
    __cil_tmp21 = (unsigned long )__cil_tmp20;
    __cil_tmp22 = __cil_tmp21 + 40;
    __cil_tmp23 = *((unsigned long *)__cil_tmp22);
    paddr = __cil_tmp23 | paddr;
  } else {
  }
  }
  __vpp_verify___1 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____1): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __cil_tmp24 = (struct uv_hub_info_s *)tcp_ptr_____1;
  __cil_tmp25 = (unsigned long )__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 + 24;
  __cil_tmp27 = *((unsigned long *)__cil_tmp26);
  paddr = __cil_tmp27 | paddr;
  __vpp_verify___2 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____2): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___3 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____3): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___4 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____4): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___5 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____5): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __cil_tmp28 = (struct uv_hub_info_s *)tcp_ptr_____5;
  __cil_tmp29 = (unsigned long )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 + 23;
  __cil_tmp31 = *((unsigned char *)__cil_tmp30);
  __cil_tmp32 = (int )__cil_tmp31;
  __cil_tmp33 = (struct uv_hub_info_s *)tcp_ptr_____4;
  __cil_tmp34 = (unsigned long )__cil_tmp33;
  __cil_tmp35 = __cil_tmp34 + 57;
  __cil_tmp36 = *((unsigned char *)__cil_tmp35);
  __cil_tmp37 = (int )__cil_tmp36;
  __cil_tmp38 = paddr >> __cil_tmp37;
  __cil_tmp39 = __cil_tmp38 << __cil_tmp32;
  __cil_tmp40 = (struct uv_hub_info_s *)tcp_ptr_____3;
  __cil_tmp41 = (unsigned long )__cil_tmp40;
  __cil_tmp42 = __cil_tmp41 + 22;
  __cil_tmp43 = *((unsigned char *)__cil_tmp42);
  __cil_tmp44 = (int )__cil_tmp43;
  __cil_tmp45 = (struct uv_hub_info_s *)tcp_ptr_____2;
  __cil_tmp46 = (unsigned long )__cil_tmp45;
  __cil_tmp47 = __cil_tmp46 + 22;
  __cil_tmp48 = *((unsigned char *)__cil_tmp47);
  __cil_tmp49 = (int )__cil_tmp48;
  __cil_tmp50 = paddr << __cil_tmp49;
  __cil_tmp51 = __cil_tmp50 >> __cil_tmp44;
  paddr = __cil_tmp51 | __cil_tmp39;
  return (paddr);
}
}
__inline static unsigned long uv_gpa(void *v )
{ unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long __cil_tmp4 ;
  {
  {
  __cil_tmp4 = (unsigned long )v;
  tmp = __phys_addr(__cil_tmp4);
  tmp___0 = uv_soc_phys_ram_to_gpa(tmp);
  }
  return (tmp___0);
}
}
__inline static int uv_gpa_in_mmr_space(unsigned long gpa )
{ unsigned long __cil_tmp2 ;
  {
  {
  __cil_tmp2 = gpa >> 62;
  return (__cil_tmp2 == 3UL);
  }
}
}
__inline static unsigned long uv_gpa_to_soc_phys_ram(unsigned long gpa )
{ unsigned long paddr ;
  unsigned long remap_base ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify ;
  unsigned long remap_top ;
  unsigned long tcp_ptr_____0 ;
  void const *__vpp_verify___0 ;
  unsigned long tcp_ptr_____1 ;
  void const *__vpp_verify___1 ;
  unsigned long tcp_ptr_____2 ;
  void const *__vpp_verify___2 ;
  unsigned long tcp_ptr_____3 ;
  void const *__vpp_verify___3 ;
  unsigned long tcp_ptr_____4 ;
  void const *__vpp_verify___4 ;
  unsigned long tcp_ptr_____5 ;
  void const *__vpp_verify___5 ;
  struct uv_hub_info_s *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct uv_hub_info_s *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct uv_hub_info_s *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned char __cil_tmp28 ;
  int __cil_tmp29 ;
  struct uv_hub_info_s *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned char __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  struct uv_hub_info_s *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned char __cil_tmp40 ;
  int __cil_tmp41 ;
  struct uv_hub_info_s *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned char __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  struct uv_hub_info_s *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  {
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (& __uv_hub_info));
  __cil_tmp19 = (struct uv_hub_info_s *)tcp_ptr__;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 + 40;
  remap_base = *((unsigned long *)__cil_tmp21);
  __vpp_verify___0 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____0): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __cil_tmp22 = (struct uv_hub_info_s *)tcp_ptr_____0;
  __cil_tmp23 = (unsigned long )__cil_tmp22;
  __cil_tmp24 = __cil_tmp23 + 32;
  remap_top = *((unsigned long *)__cil_tmp24);
  __vpp_verify___1 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____1): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___2 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____2): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___3 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____3): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __vpp_verify___4 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____4): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __cil_tmp25 = (struct uv_hub_info_s *)tcp_ptr_____4;
  __cil_tmp26 = (unsigned long )__cil_tmp25;
  __cil_tmp27 = __cil_tmp26 + 57;
  __cil_tmp28 = *((unsigned char *)__cil_tmp27);
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = (struct uv_hub_info_s *)tcp_ptr_____3;
  __cil_tmp31 = (unsigned long )__cil_tmp30;
  __cil_tmp32 = __cil_tmp31 + 23;
  __cil_tmp33 = *((unsigned char *)__cil_tmp32);
  __cil_tmp34 = (int )__cil_tmp33;
  __cil_tmp35 = gpa >> __cil_tmp34;
  __cil_tmp36 = __cil_tmp35 << __cil_tmp29;
  __cil_tmp37 = (struct uv_hub_info_s *)tcp_ptr_____2;
  __cil_tmp38 = (unsigned long )__cil_tmp37;
  __cil_tmp39 = __cil_tmp38 + 22;
  __cil_tmp40 = *((unsigned char *)__cil_tmp39);
  __cil_tmp41 = (int )__cil_tmp40;
  __cil_tmp42 = (struct uv_hub_info_s *)tcp_ptr_____1;
  __cil_tmp43 = (unsigned long )__cil_tmp42;
  __cil_tmp44 = __cil_tmp43 + 22;
  __cil_tmp45 = *((unsigned char *)__cil_tmp44);
  __cil_tmp46 = (int )__cil_tmp45;
  __cil_tmp47 = gpa << __cil_tmp46;
  __cil_tmp48 = __cil_tmp47 >> __cil_tmp41;
  gpa = __cil_tmp48 | __cil_tmp36;
  __vpp_verify___5 = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr_____5): "m" (this_cpu_off),
                       "0" (& __uv_hub_info));
  __cil_tmp49 = (struct uv_hub_info_s *)tcp_ptr_____5;
  __cil_tmp50 = (unsigned long )__cil_tmp49;
  __cil_tmp51 = __cil_tmp50 + 8;
  __cil_tmp52 = *((unsigned long *)__cil_tmp51);
  paddr = __cil_tmp52 & gpa;
  if (paddr >= remap_base) {
    {
    __cil_tmp53 = remap_base + remap_top;
    if (__cil_tmp53 > paddr) {
      paddr = paddr - remap_base;
    } else {
    }
    }
  } else {
  }
  return (paddr);
}
}
extern struct uv_blade_info *uv_blade_info ;
extern short *uv_cpu_to_blade ;
__inline static int uv_cpu_to_blade_id(int cpu )
{ unsigned long __cil_tmp2 ;
  short *__cil_tmp3 ;
  short __cil_tmp4 ;
  {
  {
  __cil_tmp2 = (unsigned long )cpu;
  __cil_tmp3 = uv_cpu_to_blade + __cil_tmp2;
  __cil_tmp4 = *__cil_tmp3;
  return ((int )__cil_tmp4);
  }
}
}
__inline static int uv_cpu_to_pnode(int cpu )
{ int tmp ;
  unsigned long __cil_tmp3 ;
  struct uv_blade_info *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned short __cil_tmp7 ;
  {
  {
  tmp = uv_cpu_to_blade_id(cpu);
  }
  {
  __cil_tmp3 = (unsigned long )tmp;
  __cil_tmp4 = uv_blade_info + __cil_tmp3;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 + 4;
  __cil_tmp7 = *((unsigned short *)__cil_tmp6);
  return ((int )__cil_tmp7);
  }
}
}
extern s64 uv_bios_change_memprotect(u64 , u64 , enum uv_memprotect ) ;
extern long sn_partition_id ;
extern long sn_region_size ;
extern int gru_read_gpa(unsigned long * , unsigned long ) ;
extern int gru_copy_gpa(unsigned long , unsigned long , unsigned int ) ;
static unsigned long xp_pa_uv(void *addr )
{ unsigned long tmp ;
  {
  {
  tmp = uv_gpa(addr);
  }
  return (tmp);
}
}
static unsigned long xp_socket_pa_uv(unsigned long gpa )
{ unsigned long tmp ;
  {
  {
  tmp = uv_gpa_to_soc_phys_ram(gpa);
  }
  return (tmp);
}
}
static enum xp_retval xp_remote_mmr_read(unsigned long dst_gpa , unsigned long const src_gpa ,
                                         size_t len )
{ int ret ;
  unsigned long *dst_va ;
  unsigned long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  long __cil_tmp13 ;
  int __cil_tmp14 ;
  long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct device const *__cil_tmp17 ;
  {
  {
  tmp = uv_gpa_to_soc_phys_ram(dst_gpa);
  __cil_tmp10 = tmp + 0xffff880000000000UL;
  dst_va = (unsigned long *)__cil_tmp10;
  __cil_tmp11 = (unsigned long )src_gpa;
  tmp___0 = uv_gpa_in_mmr_space(__cil_tmp11);
  __cil_tmp12 = tmp___0 == 0;
  __cil_tmp13 = (long )__cil_tmp12;
  tmp___1 = __builtin_expect(__cil_tmp13, 0L);
  }
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12522/dscv_tempdir/dscv/ri/43_1a/drivers/misc/sgi-xp/xp_uv.c.p"),
                         "i" (65), "i" (12UL));
    ldv_22015: ;
    goto ldv_22015;
  } else {
  }
  {
  __cil_tmp14 = len != 8UL;
  __cil_tmp15 = (long )__cil_tmp14;
  tmp___2 = __builtin_expect(__cil_tmp15, 0L);
  }
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12522/dscv_tempdir/dscv/ri/43_1a/drivers/misc/sgi-xp/xp_uv.c.p"),
                         "i" (66), "i" (12UL));
    ldv_22016: ;
    goto ldv_22016;
  } else {
  }
  {
  __cil_tmp16 = (unsigned long )src_gpa;
  ret = gru_read_gpa(dst_va, __cil_tmp16);
  }
  if (ret == 0) {
    return ((enum xp_retval )0);
  } else {
  }
  {
  __cil_tmp17 = (struct device const *)xp;
  dev_err(__cil_tmp17, "gru_read_gpa() failed, dst_gpa=0x%016lx src_gpa=0x%016lx len=%ld\n",
          dst_gpa, src_gpa, len);
  }
  return ((enum xp_retval )58);
}
}
static enum xp_retval xp_remote_memcpy_uv(unsigned long dst_gpa , unsigned long const src_gpa ,
                                          size_t len )
{ int ret ;
  enum xp_retval tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  struct device const *__cil_tmp10 ;
  {
  {
  __cil_tmp7 = (unsigned long )src_gpa;
  tmp___0 = uv_gpa_in_mmr_space(__cil_tmp7);
  }
  if (tmp___0 != 0) {
    {
    tmp = xp_remote_mmr_read(dst_gpa, src_gpa, len);
    }
    return (tmp);
  } else {
  }
  {
  __cil_tmp8 = (unsigned long )src_gpa;
  __cil_tmp9 = (unsigned int )len;
  ret = gru_copy_gpa(dst_gpa, __cil_tmp8, __cil_tmp9);
  }
  if (ret == 0) {
    return ((enum xp_retval )0);
  } else {
  }
  {
  __cil_tmp10 = (struct device const *)xp;
  dev_err(__cil_tmp10, "gru_copy_gpa() failed, dst_gpa=0x%016lx src_gpa=0x%016lx len=%ld\n",
          dst_gpa, src_gpa, len);
  }
  return ((enum xp_retval )58);
}
}
static int xp_cpu_to_nasid_uv(int cpuid___0 )
{ int tmp ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify ;
  struct uv_hub_info_s *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  {
  {
  tmp = uv_cpu_to_pnode(cpuid___0);
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (& __uv_hub_info));
  }
  {
  __cil_tmp5 = (struct uv_hub_info_s *)tcp_ptr__;
  __cil_tmp6 = (unsigned long )__cil_tmp5;
  __cil_tmp7 = __cil_tmp6 + 16;
  __cil_tmp8 = *((unsigned int *)__cil_tmp7);
  __cil_tmp9 = (unsigned int )tmp;
  __cil_tmp10 = __cil_tmp9 | __cil_tmp8;
  __cil_tmp11 = __cil_tmp10 << 1;
  return ((int )__cil_tmp11);
  }
}
}
static enum xp_retval xp_expand_memprotect_uv(unsigned long phys_addr , unsigned long size )
{ int ret ;
  s64 tmp ;
  u64 __cil_tmp5 ;
  u64 __cil_tmp6 ;
  enum uv_memprotect __cil_tmp7 ;
  struct device const *__cil_tmp8 ;
  {
  {
  __cil_tmp5 = (u64 )phys_addr;
  __cil_tmp6 = (u64 )size;
  __cil_tmp7 = (enum uv_memprotect )2;
  tmp = uv_bios_change_memprotect(__cil_tmp5, __cil_tmp6, __cil_tmp7);
  ret = (int )tmp;
  }
  if (ret != 0) {
    {
    __cil_tmp8 = (struct device const *)xp;
    dev_err(__cil_tmp8, "uv_bios_change_memprotect(,, UV_MEMPROT_ALLOW_RW) failed, ret=%d\n",
            ret);
    }
    return ((enum xp_retval )62);
  } else {
  }
  return ((enum xp_retval )0);
}
}
static enum xp_retval xp_restrict_memprotect_uv(unsigned long phys_addr , unsigned long size )
{ int ret ;
  s64 tmp ;
  u64 __cil_tmp5 ;
  u64 __cil_tmp6 ;
  enum uv_memprotect __cil_tmp7 ;
  struct device const *__cil_tmp8 ;
  {
  {
  __cil_tmp5 = (u64 )phys_addr;
  __cil_tmp6 = (u64 )size;
  __cil_tmp7 = (enum uv_memprotect )0;
  tmp = uv_bios_change_memprotect(__cil_tmp5, __cil_tmp6, __cil_tmp7);
  ret = (int )tmp;
  }
  if (ret != 0) {
    {
    __cil_tmp8 = (struct device const *)xp;
    dev_err(__cil_tmp8, "uv_bios_change_memprotect(,, UV_MEMPROT_RESTRICT_ACCESS) failed, ret=%d\n",
            ret);
    }
    return ((enum xp_retval )62);
  } else {
  }
  return ((enum xp_retval )0);
}
}
enum xp_retval xp_init_uv(void)
{ int tmp ;
  long tmp___0 ;
  int __cil_tmp3 ;
  long __cil_tmp4 ;
  short *__cil_tmp5 ;
  short *__cil_tmp6 ;
  u8 *__cil_tmp7 ;
  unsigned long (**__cil_tmp8)(void * ) ;
  unsigned long (**__cil_tmp9)(unsigned long ) ;
  enum xp_retval (**__cil_tmp10)(unsigned long , unsigned long const , size_t ) ;
  int (**__cil_tmp11)(int ) ;
  enum xp_retval (**__cil_tmp12)(unsigned long , unsigned long ) ;
  enum xp_retval (**__cil_tmp13)(unsigned long , unsigned long ) ;
  {
  {
  tmp = is_uv_system();
  __cil_tmp3 = tmp == 0;
  __cil_tmp4 = (long )__cil_tmp3;
  tmp___0 = __builtin_expect(__cil_tmp4, 0L);
  }
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12522/dscv_tempdir/dscv/ri/43_1a/drivers/misc/sgi-xp/xp_uv.c.p"),
                         "i" (165), "i" (12UL));
    ldv_22042: ;
    goto ldv_22042;
  } else {
  }
  __cil_tmp5 = & xp_max_npartitions;
  *__cil_tmp5 = (short)256;
  __cil_tmp6 = & xp_partition_id;
  *__cil_tmp6 = (short )sn_partition_id;
  __cil_tmp7 = & xp_region_size;
  *__cil_tmp7 = (u8 )sn_region_size;
  __cil_tmp8 = & xp_pa;
  *__cil_tmp8 = & xp_pa_uv;
  __cil_tmp9 = & xp_socket_pa;
  *__cil_tmp9 = & xp_socket_pa_uv;
  __cil_tmp10 = & xp_remote_memcpy;
  *__cil_tmp10 = & xp_remote_memcpy_uv;
  __cil_tmp11 = & xp_cpu_to_nasid;
  *__cil_tmp11 = & xp_cpu_to_nasid_uv;
  __cil_tmp12 = & xp_expand_memprotect;
  *__cil_tmp12 = & xp_expand_memprotect_uv;
  __cil_tmp13 = & xp_restrict_memprotect;
  *__cil_tmp13 = & xp_restrict_memprotect_uv;
  return ((enum xp_retval )0);
}
}
void xp_exit_uv(void)
{ int tmp ;
  long tmp___0 ;
  int __cil_tmp3 ;
  long __cil_tmp4 ;
  {
  {
  tmp = is_uv_system();
  __cil_tmp3 = tmp == 0;
  __cil_tmp4 = (long )__cil_tmp3;
  tmp___0 = __builtin_expect(__cil_tmp4, 0L);
  }
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12522/dscv_tempdir/dscv/ri/43_1a/drivers/misc/sgi-xp/xp_uv.c.p"),
                         "i" (184), "i" (12UL));
    ldv_22046: ;
    goto ldv_22046;
  } else {
  }
  return;
}
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int gru_copy_gpa(unsigned long arg0, unsigned long arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int gru_read_gpa(unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int is_uv_system() {
  return __VERIFIER_nondet_int();
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
struct page *ldv_some_page() {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
s64 uv_bios_change_memprotect(u64 arg0, u64 arg1, enum uv_memprotect arg2) {
  return __VERIFIER_nondet_long();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
