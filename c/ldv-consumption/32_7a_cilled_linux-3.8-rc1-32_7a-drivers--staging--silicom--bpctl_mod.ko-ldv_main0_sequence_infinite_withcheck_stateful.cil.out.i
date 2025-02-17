extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __u32 nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __u32 u_int32_t;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u16 uint16_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
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
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct net_device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
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
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct __anonstruct_seqlock_t_35 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
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
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
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
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
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
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_13040_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13042_128 {
   struct __anonstruct_ldv_13040_129 ldv_13040 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13042_128 ldv_13042 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct cred;
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
   bool ignore_lockdep ;
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
union __anonunion_ldv_13820_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13820_134 ldv_13820 ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_14498_136 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_14500_135 {
   struct __anonstruct_ldv_14498_136 ldv_14498 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_14500_135 ldv_14500 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_137 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
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
   union __anonunion_d_u_137 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
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
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_15520_139 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_15520_139 ldv_15520 ;
   enum quota_type type ;
};
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
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
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
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
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
union __anonunion_arg_141 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_140 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_141 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_140 read_descriptor_t;
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
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
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
union __anonunion_ldv_15956_142 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_15976_143 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_15992_144 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_15956_142 ldv_15956 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_15976_143 ldv_15976 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_15992_144 ldv_15992 ;
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
   kuid_t uid ;
   kuid_t euid ;
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
union __anonunion_f_u_145 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_145 f_u ;
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
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
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
struct __anonstruct_afs_147 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_146 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_147 afs ;
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
   union __anonunion_fl_u_146 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
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
   struct sb_writers s_writers ;
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
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
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
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[16U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
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
struct iommu_group;
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
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
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
struct acpi_dev_node {
   void *handle ;
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
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
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
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_19195_149 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char is_pcie : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_19195_149 ldv_19195 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion_ldv_20224_151 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_20234_155 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_20236_154 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_20234_155 ldv_20234 ;
   int units ;
};
struct __anonstruct_ldv_20238_153 {
   union __anonunion_ldv_20236_154 ldv_20236 ;
   atomic_t _count ;
};
union __anonunion_ldv_20239_152 {
   unsigned long counters ;
   struct __anonstruct_ldv_20238_153 ldv_20238 ;
};
struct __anonstruct_ldv_20240_150 {
   union __anonunion_ldv_20224_151 ldv_20224 ;
   union __anonunion_ldv_20239_152 ldv_20239 ;
};
struct __anonstruct_ldv_20247_157 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_20251_156 {
   struct list_head lru ;
   struct __anonstruct_ldv_20247_157 ldv_20247 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_20256_158 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_20240_150 ldv_20240 ;
   union __anonunion_ldv_20251_156 ldv_20251 ;
   union __anonunion_ldv_20256_158 ldv_20256 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_160 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_159 {
   struct __anonstruct_linear_160 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_159 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
struct user_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct mem_cgroup;
struct __anonstruct_ldv_22971_162 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_22972_161 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_22971_162 ldv_22971 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_22972_161 ldv_22972 ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
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
   int object_size ;
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
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_163 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_163 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef s32 dma_cookie_t;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_165 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_165 sync_serial_settings;
struct __anonstruct_te1_settings_166 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_166 te1_settings;
struct __anonstruct_raw_hdlc_proto_167 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_167 raw_hdlc_proto;
struct __anonstruct_fr_proto_168 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_168 fr_proto;
struct __anonstruct_fr_proto_pvc_169 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_169 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_170 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_170 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_171 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_171 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_172 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_172 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_173 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_174 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_173 ifr_ifrn ;
   union __anonunion_ifr_ifru_174 ifr_ifru ;
};
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_176 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_176 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_178 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_179 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_181 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_182 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_183 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_184 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_177 {
   int _pad[28U] ;
   struct __anonstruct__kill_178 _kill ;
   struct __anonstruct__timer_179 _timer ;
   struct __anonstruct__rt_180 _rt ;
   struct __anonstruct__sigchld_181 _sigchld ;
   struct __anonstruct__sigfault_182 _sigfault ;
   struct __anonstruct__sigpoll_183 _sigpoll ;
   struct __anonstruct__sigsys_184 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_177 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_26293_187 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_26302_188 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_189 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_190 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_26293_187 ldv_26293 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_26302_188 ldv_26302 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_189 type_data ;
   union __anonunion_payload_190 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct kioctx;
union __anonunion_ki_obj_191 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_191 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct uts_namespace;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*migrate_task_rq)(struct task_struct * , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_29972_209 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_29973_208 {
   __wsum csum ;
   struct __anonstruct_ldv_29972_209 ldv_29972 ;
};
union __anonunion_ldv_30012_210 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 avail_size ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_29973_208 ldv_29973 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_30012_210 ldv_30012 ;
   sk_buff_data_t inner_transport_header ;
   sk_buff_data_t inner_network_header ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[92U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   kgid_t sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[] ;
};
struct nlattr;
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   struct nf_ip_net nf_ct_proto ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t rt_genid ;
};
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
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
struct cgroup;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   int id ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct work_struct free_work ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct vlan_info;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_38262_223 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned char neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_38262_223 ldv_38262 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct bpctl_cmd {
   int status ;
   int data[8U] ;
   int in_param[8U] ;
   int out_param[8U] ;
};
struct bp_info {
   char prod_name[14U] ;
   unsigned char fw_ver ;
};
enum ldv_28506 {
    bp_copper = 0,
    bp_fiber = 1,
    bp_cx4 = 2,
    bp_none = 3
} ;
typedef enum ldv_28506 bp_media_type;
struct pfs_unit_sd {
   struct proc_dir_entry *proc_entry ;
   char proc_name[32U] ;
};
struct bypass_pfs_sd {
   char dir_name[32U] ;
   struct proc_dir_entry *bypass_entry ;
   struct pfs_unit_sd bypass_info ;
   struct pfs_unit_sd bypass_slave ;
   struct pfs_unit_sd bypass_caps ;
   struct pfs_unit_sd wd_set_caps ;
   struct pfs_unit_sd bypass ;
   struct pfs_unit_sd bypass_change ;
   struct pfs_unit_sd bypass_wd ;
   struct pfs_unit_sd wd_expire_time ;
   struct pfs_unit_sd reset_bypass_wd ;
   struct pfs_unit_sd dis_bypass ;
   struct pfs_unit_sd bypass_pwup ;
   struct pfs_unit_sd bypass_pwoff ;
   struct pfs_unit_sd std_nic ;
   struct pfs_unit_sd tap ;
   struct pfs_unit_sd dis_tap ;
   struct pfs_unit_sd tap_pwup ;
   struct pfs_unit_sd tap_change ;
   struct pfs_unit_sd wd_exp_mode ;
   struct pfs_unit_sd wd_autoreset ;
   struct pfs_unit_sd tpl ;
};
struct _bpctl_dev {
   char *name ;
   char *desc ;
   struct pci_dev *pdev ;
   struct net_device *ndev ;
   unsigned long mem_map ;
   uint8_t bus ;
   uint8_t slot ;
   uint8_t func ;
   u_int32_t device ;
   u_int32_t vendor ;
   u_int32_t subvendor ;
   u_int32_t subdevice ;
   int ifindex ;
   uint32_t bp_caps ;
   uint32_t bp_caps_ex ;
   uint8_t bp_fw_ver ;
   int bp_ext_ver ;
   int wdt_status ;
   unsigned long bypass_wdt_on_time ;
   uint32_t bypass_timer_interval ;
   struct timer_list bp_timer ;
   uint32_t reset_time ;
   uint8_t bp_status_un ;
   atomic_t wdt_busy ;
   bp_media_type media_type ;
   int bp_tpl_flag ;
   struct timer_list bp_tpl_timer ;
   spinlock_t bypass_wr_lock ;
   int bp_10g ;
   int bp_10gb ;
   int bp_fiber5 ;
   int bp_10g9 ;
   int bp_i80 ;
   int bp_540 ;
   int (*hard_start_xmit_save)(struct sk_buff * , struct net_device * ) ;
   struct net_device_ops const *old_ops ;
   struct net_device_ops new_ops ;
   int bp_self_test_flag ;
   char *bp_tx_data ;
   struct bypass_pfs_sd bypass_pfs_set ;
};
typedef struct _bpctl_dev bpctl_dev_t;
struct _bpmod_info_t {
   unsigned int vendor ;
   unsigned int device ;
   unsigned int subvendor ;
   unsigned int subdevice ;
   unsigned int index ;
   char *bp_name ;
};
typedef struct _bpmod_info_t bpmod_info_t;
struct _dev_desc {
   char *name ;
};
typedef struct _dev_desc dev_desc_t;
typedef int ldv_func_ret_type___2;
enum hrtimer_restart;
long ldv__builtin_expect(long exp , long c ) ;
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
extern int kstrtoint_from_user(char const * , size_t , unsigned int , int * ) ;
extern int sprintf(char * , char const * , ...) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (825), "i" (12UL));
    ldv_4725: ;
    goto ldv_4725;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void arch_local_irq_restore(unsigned long f )
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.restore_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (830), "i" (12UL));
    ldv_4735: ;
    goto ldv_4735;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.restore_fl.func), [paravirt_clobber] "i" (1),
                       "D" (f): "memory", "cc");
  return;
}
}
__inline static void arch_local_irq_disable(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_disable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (835), "i" (12UL));
    ldv_4744: ;
    goto ldv_4744;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (47UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static unsigned long arch_local_irq_save(void)
{
  unsigned long f ;
  {
  f = arch_local_save_flags();
  arch_local_irq_disable();
  return (f);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern int _raw_spin_trylock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static int spin_trylock(spinlock_t *lock )
{
  int tmp ;
  {
  tmp = _raw_spin_trylock(& lock->ldv_5961.rlock);
  return (tmp);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern struct module __this_module ;
__inline static void sema_init(struct semaphore *sem , int val )
{
  struct lock_class_key __key ;
  struct semaphore __constr_expr_0 ;
  {
  __constr_expr_0.lock.raw_lock.ldv_2024.head_tail = 0U;
  __constr_expr_0.lock.magic = 3735899821U;
  __constr_expr_0.lock.owner_cpu = 4294967295U;
  __constr_expr_0.lock.owner = 0xffffffffffffffffUL;
  __constr_expr_0.lock.dep_map.key = 0;
  __constr_expr_0.lock.dep_map.class_cache[0] = 0;
  __constr_expr_0.lock.dep_map.class_cache[1] = 0;
  __constr_expr_0.lock.dep_map.name = "(*sem).lock";
  __constr_expr_0.lock.dep_map.cpu = 0;
  __constr_expr_0.lock.dep_map.ip = 0UL;
  __constr_expr_0.count = (unsigned int )val;
  __constr_expr_0.wait_list.next = & sem->wait_list;
  __constr_expr_0.wait_list.prev = & sem->wait_list;
  *sem = __constr_expr_0;
  lockdep_init_map(& sem->lock.dep_map, "semaphore->lock", & __key, 0);
  return;
}
}
extern int down_interruptible(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern int __register_chrdev(unsigned int , unsigned int , unsigned int , char const * ,
                             struct file_operations const * ) ;
extern void __unregister_chrdev(unsigned int , unsigned int , unsigned int , char const * ) ;
__inline static int register_chrdev(unsigned int major , char const *name , struct file_operations const *fops )
{
  int tmp ;
  {
  tmp = __register_chrdev(major, 0U, 256U, name, fops);
  return (tmp);
}
}
__inline static void unregister_chrdev(unsigned int major , char const *name )
{
  {
  __unregister_chrdev(major, 0U, 256U, name);
  return;
}
}
extern struct pci_dev *pci_get_subsys(unsigned int , unsigned int , unsigned int ,
                                      unsigned int , struct pci_dev * ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
extern void __const_udelay(unsigned long ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
extern struct proc_dir_entry *create_proc_entry(char const * , umode_t , struct proc_dir_entry * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct net init_net ;
extern int register_netdevice_notifier(struct notifier_block * ) ;
extern int unregister_netdevice_notifier(struct notifier_block * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
__inline static unsigned int _kc_jiffies_to_msecs(unsigned long const j )
{
  {
  return ((unsigned int )j * 4U);
}
}
int bp_proc_create(void) ;
int is_bypass_sd(int ifindex ) ;
int get_bypass_slave_sd(int ifindex ) ;
int get_bypass_caps_sd(int ifindex ) ;
int get_wd_set_caps_sd(int ifindex ) ;
int set_bypass_sd(int ifindex , int bypass_mode ) ;
int get_bypass_sd(int ifindex ) ;
int get_bypass_change_sd(int ifindex ) ;
int set_dis_bypass_sd(int ifindex , int dis_param ) ;
int get_dis_bypass_sd(int ifindex ) ;
int set_bypass_pwoff_sd(int ifindex , int bypass_mode ) ;
int get_bypass_pwoff_sd(int ifindex ) ;
int set_bypass_pwup_sd(int ifindex , int bypass_mode ) ;
int get_bypass_pwup_sd(int ifindex ) ;
int set_bypass_wd_sd(int if_index , int ms_timeout , int *ms_timeout_set ) ;
int get_bypass_wd_sd(int ifindex , int *timeout ) ;
int get_wd_expire_time_sd(int ifindex , int *time_left ) ;
int reset_bypass_wd_timer_sd(int ifindex ) ;
int set_std_nic_sd(int ifindex , int nic_mode ) ;
int get_std_nic_sd(int ifindex ) ;
int set_tx_sd(int ifindex , int tx_state ) ;
int get_tx_sd(int ifindex ) ;
int set_tpl_sd(int ifindex , int tpl_state ) ;
int get_tpl_sd(int ifindex ) ;
int get_bp_hw_reset_sd(int ifindex ) ;
int set_bp_hw_reset_sd(int ifindex , int status ) ;
int set_tap_sd(int ifindex , int tap_mode ) ;
int get_tap_sd(int ifindex ) ;
int get_tap_change_sd(int ifindex ) ;
int set_dis_tap_sd(int ifindex , int dis_param ) ;
int get_dis_tap_sd(int ifindex ) ;
int set_tap_pwup_sd(int ifindex , int tap_mode ) ;
int get_tap_pwup_sd(int ifindex ) ;
int set_wd_exp_mode_sd(int ifindex , int param ) ;
int get_wd_exp_mode_sd(int ifindex ) ;
int set_wd_autoreset_sd(int ifindex , int param ) ;
int get_wd_autoreset_sd(int ifindex ) ;
int set_bp_disc_sd(int ifindex , int disc_mode ) ;
int get_bp_disc_sd(int ifindex ) ;
int get_bp_disc_change_sd(int ifindex ) ;
int set_bp_dis_disc_sd(int ifindex , int dis_param ) ;
int get_bp_dis_disc_sd(int ifindex ) ;
int set_bp_disc_pwup_sd(int ifindex , int disc_mode ) ;
int get_bp_disc_pwup_sd(int ifindex ) ;
int get_bypass_info_sd(int ifindex , struct bp_info *bp_info ) ;
int bp_if_scan_sd(void) ;
static int Device_Open = 0;
static int major_num = 0;
spinlock_t bpvm_lock ;
static bpctl_dev_t *bpctl_dev_arr ;
static struct semaphore bpctl_sema ;
static int device_num = 0;
static int get_dev_idx(int ifindex ) ;
static bpctl_dev_t *get_master_port_fn(bpctl_dev_t *pbpctl_dev ) ;
static int disc_status(bpctl_dev_t *pbpctl_dev ) ;
static int bypass_status(bpctl_dev_t *pbpctl_dev ) ;
static int wdt_timer(bpctl_dev_t *pbpctl_dev , int *time_left ) ;
static bpctl_dev_t *get_status_port_fn(bpctl_dev_t *pbpctl_dev ) ;
static void if_scan_init(void) ;
int bypass_proc_create_dev_sd(bpctl_dev_t *pbp_device_block ) ;
int bypass_proc_remove_dev_sd(bpctl_dev_t *pbp_device_block ) ;
int is_bypass_fn(bpctl_dev_t *pbpctl_dev ) ;
int get_dev_idx_bsf(int bus , int slot , int func ) ;
static unsigned long str_to_hex(char *p ) ;
static int bp_device_event(struct notifier_block *unused , unsigned long event , void *ptr )
{
  struct net_device *dev ;
  bpctl_dev_t *pbpctl_dev ;
  bpctl_dev_t *pbpctl_dev_m ;
  int dev_num ;
  int ret ;
  int ret_d ;
  int time_left ;
  struct ethtool_drvinfo drvinfo ;
  char cbuf[32U] ;
  char *buf ;
  char res[10U] ;
  int i ;
  int ifindex ;
  int idx_dev ;
  int bus ;
  int slot ;
  int func ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  char *tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  int idx_dev___0 ;
  int idx_dev___1 ;
  bool tmp___4 ;
  int tmp___5 ;
  {
  dev = (struct net_device *)ptr;
  pbpctl_dev = 0;
  pbpctl_dev_m = 0;
  dev_num = 0;
  ret = 0;
  ret_d = 0;
  time_left = 0;
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (0);
  } else {
  }
  if (event == 5UL) {
    buf = 0;
    i = 0;
    idx_dev = 0;
    bus = 0;
    slot = 0;
    func = 0;
    ifindex = dev->ifindex;
    memset((void *)(& res), 0, 10UL);
    memset((void *)(& drvinfo), 0, 196UL);
    if ((unsigned long )dev->ethtool_ops != (unsigned long )((struct ethtool_ops const *)0) && (unsigned long )(dev->ethtool_ops)->get_drvinfo != (unsigned long )((void (* )(struct net_device * ,
                                                                                                                                                                                           struct ethtool_drvinfo * ))0)) {
      memset((void *)(& drvinfo), 0, 196UL);
      (*((dev->ethtool_ops)->get_drvinfo))(dev, & drvinfo);
    } else {
      return (0);
    }
    tmp = strcmp((char const *)(& drvinfo.bus_info), "N/A");
    if (tmp == 0) {
      return (0);
    } else {
    }
    __len = 32UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& cbuf), (void const *)(& drvinfo.bus_info), __len);
    } else {
      __ret = memcpy((void *)(& cbuf), (void const *)(& drvinfo.bus_info),
                               __len);
    }
    buf = (char *)(& cbuf);
    goto ldv_40274;
    ldv_40273: ;
    ldv_40274:
    tmp___0 = buf;
    buf = buf + 1;
    if ((int )((signed char )*tmp___0) != 58) {
      goto ldv_40273;
    } else {
    }
    i = 0;
    goto ldv_40278;
    ldv_40277: ;
    if ((int )((signed char )*buf) == 58) {
      goto ldv_40276;
    } else {
    }
    res[i] = *buf;
    i = i + 1;
    buf = buf + 1;
    ldv_40278: ;
    if (i <= 9) {
      goto ldv_40277;
    } else {
    }
    ldv_40276:
    buf = buf + 1;
    tmp___1 = str_to_hex((char *)(& res));
    bus = (int )tmp___1;
    memset((void *)(& res), 0, 10UL);
    i = 0;
    goto ldv_40281;
    ldv_40280: ;
    if ((int )((signed char )*buf) == 46) {
      goto ldv_40279;
    } else {
    }
    res[i] = *buf;
    i = i + 1;
    buf = buf + 1;
    ldv_40281: ;
    if (i <= 9) {
      goto ldv_40280;
    } else {
    }
    ldv_40279:
    buf = buf + 1;
    tmp___2 = str_to_hex((char *)(& res));
    slot = (int )tmp___2;
    tmp___3 = str_to_hex(buf);
    func = (int )tmp___3;
    idx_dev = get_dev_idx_bsf(bus, slot, func);
    if (idx_dev != -1) {
      (bpctl_dev_arr + (unsigned long )idx_dev)->ifindex = ifindex;
      (bpctl_dev_arr + (unsigned long )idx_dev)->ndev = dev;
      bypass_proc_remove_dev_sd(bpctl_dev_arr + (unsigned long )idx_dev);
      bypass_proc_create_dev_sd(bpctl_dev_arr + (unsigned long )idx_dev);
    } else {
    }
    return (0);
  } else {
  }
  if (event == 6UL) {
    idx_dev___0 = 0;
    idx_dev___0 = 0;
    goto ldv_40284;
    ldv_40283: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev___0)->ndev == (unsigned long )dev) {
      bypass_proc_remove_dev_sd(bpctl_dev_arr + (unsigned long )idx_dev___0);
      (bpctl_dev_arr + (unsigned long )idx_dev___0)->ndev = 0;
      return (0);
    } else {
    }
    idx_dev___0 = idx_dev___0 + 1;
    ldv_40284: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev___0)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev___0 < device_num) {
      goto ldv_40283;
    } else {
    }
    return (0);
  } else {
  }
  if (event == 10UL) {
    idx_dev___1 = 0;
    idx_dev___1 = 0;
    goto ldv_40288;
    ldv_40287: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev___1)->ndev == (unsigned long )dev) {
      bypass_proc_remove_dev_sd(bpctl_dev_arr + (unsigned long )idx_dev___1);
      bypass_proc_create_dev_sd(bpctl_dev_arr + (unsigned long )idx_dev___1);
      return (0);
    } else {
    }
    idx_dev___1 = idx_dev___1 + 1;
    ldv_40288: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev___1)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev___1 < device_num) {
      goto ldv_40287;
    } else {
    }
    return (0);
  } else {
  }
  switch (event) {
  case 4UL:
  tmp___4 = netif_carrier_ok((struct net_device const *)dev);
  if ((int )tmp___4) {
    return (0);
  } else {
  }
  dev_num = get_dev_idx(dev->ifindex);
  if (dev_num == -1) {
    return (0);
  } else {
    pbpctl_dev = bpctl_dev_arr + (unsigned long )dev_num;
    if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
      return (0);
    } else {
    }
  }
  tmp___5 = is_bypass_fn(pbpctl_dev);
  if (tmp___5 == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (0);
  } else {
  }
  ret = bypass_status(pbpctl_dev_m);
  if (ret == 1) {
    printk("bpmod: %s is in the Bypass mode now", (char *)(& dev->name));
  } else {
  }
  ret_d = disc_status(pbpctl_dev_m);
  if (ret_d == 1) {
    printk("bpmod: %s is in the Disconnect mode now", (char *)(& dev->name));
  } else {
  }
  if (ret != 0 || ret_d != 0) {
    wdt_timer(pbpctl_dev_m, & time_left);
    if (time_left == -1) {
      printk("; WDT has expired");
    } else {
    }
    printk(".\n");
  } else {
  }
  return (0);
  default: ;
  return (0);
  }
  return (0);
}
}
static struct notifier_block bp_notifier_block = {& bp_device_event, 0, 0};
static int device_open(struct inode *inode , struct file *file )
{
  {
  Device_Open = Device_Open + 1;
  return (0);
}
}
static int device_release(struct inode *inode , struct file *file )
{
  {
  Device_Open = Device_Open - 1;
  return (0);
}
}
int wdt_time_left(bpctl_dev_t *pbpctl_dev ) ;
static void write_pulse(bpctl_dev_t *pbpctl_dev , unsigned int ctrl_ext , unsigned char value ,
                        unsigned char len )
{
  unsigned char ctrl_val ;
  unsigned int i ;
  unsigned int ctrl ;
  bpctl_dev_t *pbpctl_dev_c ;
  unsigned int tmp ;
  {
  ctrl_val = 0U;
  i = (unsigned int )len;
  ctrl = 0U;
  pbpctl_dev_c = 0;
  if (pbpctl_dev->bp_i80 != 0) {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
  } else {
  }
  if (pbpctl_dev->bp_540 != 0) {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
  } else {
  }
  if (pbpctl_dev->bp_10g9 != 0) {
    pbpctl_dev_c = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_c == (unsigned long )((bpctl_dev_t *)0)) {
      return;
    } else {
    }
    ctrl = readl((void const volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else {
  }
  goto ldv_40332;
  ldv_40331:
  ctrl_val = (unsigned int )((unsigned char )((int )value >> (int )i)) & 1U;
  if ((unsigned int )ctrl_val != 0U) {
    if (pbpctl_dev->bp_10g9 != 0) {
      writel(ctrl_ext | 8U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
      writel(ctrl | 4112U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_fiber5 != 0) {
      writel(ctrl_ext | 13369344U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_i80 != 0) {
      writel(ctrl_ext | 4456448U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      writel(ctrl | 1088U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_540 != 0) {
      writel(ctrl | 1285U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_10gb != 0) {
      writel((ctrl_ext & 3486502911U) | 12288U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
    } else
    if (pbpctl_dev->bp_10g == 0) {
      writel(ctrl_ext | 3264U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else {
      writel(ctrl_ext | 10U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    }
    __const_udelay(429500UL);
    if (pbpctl_dev->bp_10g9 != 0) {
      writel(ctrl_ext | 8U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
      writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_fiber5 != 0) {
      writel((ctrl_ext & 4281597951U) | 12845056U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_i80 != 0) {
      writel(ctrl_ext | 4456448U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_540 != 0) {
      writel((ctrl & 4294966010U) | 1281U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_10gb != 0) {
      writel((ctrl_ext & 3486502911U) | 2101248U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
    } else
    if (pbpctl_dev->bp_10g == 0) {
      writel((ctrl_ext & 4294964031U) | 3136U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else {
      writel((ctrl_ext & 4294967285U) | 2U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    }
    __const_udelay(429500UL);
  } else {
    if (pbpctl_dev->bp_10g9 != 0) {
      writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
      writel(ctrl | 4112U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_fiber5 != 0) {
      writel((ctrl_ext & 4281597951U) | 13107200U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_i80 != 0) {
      writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      writel(ctrl | 1088U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_540 != 0) {
      writel((ctrl & 4294966010U) | 1284U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_10gb != 0) {
      writel((ctrl_ext & 3486502911U) | 1056768U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
    } else
    if (pbpctl_dev->bp_10g == 0) {
      writel((ctrl_ext & 4294964031U) | 3200U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else {
      writel((ctrl_ext & 4294967285U) | 8U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    }
    __const_udelay(429500UL);
    if (pbpctl_dev->bp_10g9 != 0) {
      writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
      writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_fiber5 != 0) {
      writel((ctrl_ext & 4281597951U) | 12582912U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_i80 != 0) {
      writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_540 != 0) {
      writel((ctrl & 4294966010U) | 1280U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_10gb != 0) {
      writel((ctrl_ext & 3486502911U) | 3145728U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
    } else
    if (pbpctl_dev->bp_10g == 0) {
      writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else {
      writel(ctrl_ext & 4294967285U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    }
    __const_udelay(429500UL);
  }
  ldv_40332:
  tmp = i;
  i = i - 1U;
  if (tmp != 0U) {
    goto ldv_40331;
  } else {
  }
  return;
}
}
static int read_pulse(bpctl_dev_t *pbpctl_dev , unsigned int ctrl_ext , unsigned char len )
{
  unsigned char ctrl_val ;
  unsigned int i ;
  unsigned int ctrl ;
  bpctl_dev_t *pbpctl_dev_c ;
  unsigned int tmp ;
  {
  ctrl_val = 0U;
  i = (unsigned int )len;
  ctrl = 0U;
  pbpctl_dev_c = 0;
  if (pbpctl_dev->bp_i80 != 0) {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
  } else {
  }
  if (pbpctl_dev->bp_540 != 0) {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
  } else {
  }
  if (pbpctl_dev->bp_10g9 != 0) {
    pbpctl_dev_c = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_c == (unsigned long )((bpctl_dev_t *)0)) {
      return (-1);
    } else {
    }
    ctrl = readl((void const volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else {
  }
  goto ldv_40352;
  ldv_40351: ;
  if (pbpctl_dev->bp_10g9 != 0) {
    writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    writel((ctrl_ext & 4281860095U) | 8388608U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    writel(ctrl_ext & 4290772991U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    writel((ctrl & 4294966011U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    writel((ctrl_ext & 3486502911U) | 270532608U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    writel((ctrl_ext & 4294964095U) | 2048U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    writel((ctrl_ext & 4294967285U) | 2U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(429500UL);
  if (pbpctl_dev->bp_10g9 != 0) {
    writel(ctrl | 4112U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    writel((ctrl_ext & 4281860095U) | 8912896U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    writel(ctrl_ext & 4290772991U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel(ctrl | 1088U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    writel((ctrl & 4294966011U) | 1028U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    writel((ctrl_ext & 3486502911U) | 268443648U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    writel((ctrl_ext & 4294964095U) | 2176U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    writel(ctrl_ext | 10U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  if (pbpctl_dev->bp_10g9 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0 || pbpctl_dev->bp_i80 != 0) {
    ctrl_ext = readl((void const volatile *)pbpctl_dev->mem_map);
  } else
  if (pbpctl_dev->bp_540 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
  } else {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(429500UL);
  if (pbpctl_dev->bp_10g9 != 0) {
    if ((ctrl_ext & 4U) != 0U) {
      ctrl_val = (unsigned char )((int )((signed char )(1 << (int )i)) | (int )((signed char )ctrl_val));
    } else
    if (pbpctl_dev->bp_fiber5 != 0) {
      if ((ctrl_ext & 262144U) != 0U) {
        ctrl_val = (unsigned char )((int )((signed char )(1 << (int )i)) | (int )((signed char )ctrl_val));
      } else
      if (pbpctl_dev->bp_i80 != 0) {
        if ((ctrl_ext & 262144U) != 0U) {
          ctrl_val = (unsigned char )((int )((signed char )(1 << (int )i)) | (int )((signed char )ctrl_val));
        } else
        if (pbpctl_dev->bp_540 != 0) {
          if ((int )ctrl_ext & 1) {
            ctrl_val = (unsigned char )((int )((signed char )(1 << (int )i)) | (int )((signed char )ctrl_val));
          } else
          if (pbpctl_dev->bp_10gb != 0) {
            if ((ctrl_ext & 16U) != 0U) {
              ctrl_val = (unsigned char )((int )((signed char )(1 << (int )i)) | (int )((signed char )ctrl_val));
            } else
            if (pbpctl_dev->bp_10g == 0) {
              if ((ctrl_ext & 64U) != 0U) {
                ctrl_val = (unsigned char )((int )((signed char )(1 << (int )i)) | (int )((signed char )ctrl_val));
              } else
              if ((int )ctrl_ext & 1) {
                ctrl_val = (unsigned char )((int )((signed char )(1 << (int )i)) | (int )((signed char )ctrl_val));
              } else {
              }
            } else {
            }
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  ldv_40352:
  tmp = i;
  i = i - 1U;
  if (tmp != 0U) {
    goto ldv_40351;
  } else {
  }
  return ((int )ctrl_val);
}
}
static void write_reg(bpctl_dev_t *pbpctl_dev , unsigned char value , unsigned char addr )
{
  uint32_t ctrl_ext ;
  uint32_t ctrl ;
  bpctl_dev_t *pbpctl_dev_c ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ctrl_ext = 0U;
  ctrl = 0U;
  pbpctl_dev_c = 0;
  if (pbpctl_dev->bp_10g9 != 0) {
    pbpctl_dev_c = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_c == (unsigned long )((bpctl_dev_t *)0)) {
      return;
    } else {
    }
  } else {
  }
  if (pbpctl_dev->wdt_status == 1 && pbpctl_dev->bp_ext_ver <= 3) {
    wdt_time_left(pbpctl_dev);
  } else {
  }
  tmp = spinlock_check(& pbpctl_dev->bypass_wr_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (pbpctl_dev->bp_10g9 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    ctrl = readl((void const volatile *)(pbpctl_dev_c->mem_map + 32UL));
    writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    ctrl_ext = readl((void const volatile *)pbpctl_dev->mem_map);
    writel((ctrl_ext & 4281597951U) | 12582912U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    ctrl_ext = readl((void const volatile *)pbpctl_dev->mem_map);
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
    writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    ctrl = ctrl_ext;
    writel((ctrl & 4294966010U) | 1280U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42236UL));
    writel((ctrl_ext & 3486502911U) | 3145728U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
    writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    writel(ctrl_ext & 4294967285U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(859000UL);
  write_pulse(pbpctl_dev, ctrl_ext, 2, 2);
  write_pulse(pbpctl_dev, ctrl_ext, 2, 2);
  write_pulse(pbpctl_dev, ctrl_ext, (int )addr, 4);
  write_pulse(pbpctl_dev, ctrl_ext, (int )value, 8);
  if (pbpctl_dev->bp_10g9 != 0) {
    writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    writel((ctrl_ext & 4281597951U) | 12582912U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    writel((ctrl & 4294966010U) | 1280U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    writel((ctrl_ext & 3486502911U) | 3145728U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    writel(ctrl_ext & 4294967285U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(3436000UL);
  if ((pbpctl_dev->wdt_status == 1 && pbpctl_dev->bp_ext_ver <= 3) && (unsigned int )addr == 10U) {
    pbpctl_dev->bypass_wdt_on_time = jiffies;
  } else {
  }
  spin_unlock_irqrestore(& pbpctl_dev->bypass_wr_lock, flags);
  return;
}
}
static void write_data(bpctl_dev_t *pbpctl_dev , unsigned char value )
{
  {
  write_reg(pbpctl_dev, (int )value, 10);
  return;
}
}
static int read_reg(bpctl_dev_t *pbpctl_dev , unsigned char addr )
{
  uint32_t ctrl_ext ;
  uint32_t ctrl ;
  uint32_t ctrl_value ;
  bpctl_dev_t *pbpctl_dev_c ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  {
  ctrl_ext = 0U;
  ctrl = 0U;
  ctrl_value = 0U;
  pbpctl_dev_c = 0;
  tmp = spinlock_check(& pbpctl_dev->bypass_wr_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (pbpctl_dev->bp_10g9 != 0) {
    pbpctl_dev_c = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_c == (unsigned long )((bpctl_dev_t *)0)) {
      return (-1);
    } else {
    }
  } else {
  }
  if (pbpctl_dev->bp_10g9 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    ctrl = readl((void const volatile *)(pbpctl_dev_c->mem_map + 32UL));
    writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    ctrl_ext = readl((void const volatile *)pbpctl_dev->mem_map);
    writel((ctrl_ext & 4281597951U) | 12582912U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    ctrl_ext = readl((void const volatile *)pbpctl_dev->mem_map);
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
    writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    writel((ctrl & 4294966010U) | 1280U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42236UL));
    writel((ctrl_ext & 3486502911U) | 3145728U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
    writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    writel(ctrl_ext & 4294967285U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(859000UL);
  write_pulse(pbpctl_dev, ctrl_ext, 2, 2);
  write_pulse(pbpctl_dev, ctrl_ext, 1, 2);
  write_pulse(pbpctl_dev, ctrl_ext, (int )addr, 4);
  if (pbpctl_dev->bp_10g9 != 0) {
    writel(ctrl_ext | 8U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel(ctrl | 4112U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    writel((ctrl_ext & 4281597951U) | 8912896U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    writel(ctrl_ext & 4290510847U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel(ctrl | 1088U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    writel((ctrl & 4294966010U) | 1284U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    writel((ctrl_ext & 3486502911U) | 268443648U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    writel((ctrl_ext & 4294964031U) | 2176U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    writel(ctrl_ext | 10U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(429500UL);
  tmp___0 = read_pulse(pbpctl_dev, ctrl_ext, 8);
  ctrl_value = (uint32_t )tmp___0;
  if (pbpctl_dev->bp_10g9 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    ctrl = readl((void const volatile *)(pbpctl_dev_c->mem_map + 32UL));
    writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    writel((ctrl_ext & 4281597951U) | 12582912U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    writel((ctrl & 4294966010U) | 1280U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42236UL));
    writel((ctrl_ext & 3486502911U) | 3145728U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    writel(ctrl_ext & 4294967285U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(3436000UL);
  spin_unlock_irqrestore(& pbpctl_dev->bypass_wr_lock, flags);
  return ((int )ctrl_value);
}
}
static int wdt_pulse(bpctl_dev_t *pbpctl_dev )
{
  uint32_t ctrl_ext ;
  uint32_t ctrl ;
  bpctl_dev_t *pbpctl_dev_c ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ctrl_ext = 0U;
  ctrl = 0U;
  pbpctl_dev_c = 0;
  tmp = spinlock_check(& pbpctl_dev->bypass_wr_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (pbpctl_dev->bp_10g9 != 0) {
    pbpctl_dev_c = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_c == (unsigned long )((bpctl_dev_t *)0)) {
      return (-1);
    } else {
    }
  } else {
  }
  if (pbpctl_dev->bp_10g9 != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    ctrl = readl((void const volatile *)(pbpctl_dev_c->mem_map + 32UL));
    writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    ctrl_ext = readl((void const volatile *)pbpctl_dev->mem_map);
    writel((ctrl_ext & 4281597951U) | 12582912U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    ctrl_ext = readl((void const volatile *)pbpctl_dev->mem_map);
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
    writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    ctrl_ext = ctrl;
    writel((ctrl & 4294966010U) | 1280U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42236UL));
    writel((ctrl_ext & 3486502911U) | 3145728U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
    writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 40UL));
    writel(ctrl_ext & 4294967285U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  if (pbpctl_dev->bp_10g9 != 0) {
    writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel(ctrl | 4112U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    writel((ctrl_ext & 4281597951U) | 13107200U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel(ctrl | 1088U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    writel((ctrl & 4294966010U) | 1284U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42236UL));
    writel((ctrl_ext & 3486502911U) | 1056768U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    writel((ctrl_ext & 4294964031U) | 3200U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    writel((ctrl_ext & 4294967285U) | 8U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  __const_udelay(4295UL);
  if (pbpctl_dev->bp_10g9 != 0) {
    writel(ctrl_ext & 4294967287U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
    writel((ctrl & 4294963183U) | 4096U, (void volatile *)(pbpctl_dev_c->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_fiber5 != 0) {
    writel((ctrl_ext & 4281597951U) | 12582912U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_i80 != 0) {
    writel((ctrl_ext & 4290510847U) | 4194304U, (void volatile *)pbpctl_dev->mem_map);
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    writel((ctrl & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else
  if (pbpctl_dev->bp_540 != 0) {
    writel((ctrl & 4294966010U) | 1280U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42236UL));
    writel((ctrl_ext & 3486502911U) | 3145728U, (void volatile *)(pbpctl_dev->mem_map + 42236UL));
  } else
  if (pbpctl_dev->bp_10g == 0) {
    writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
    readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  } else {
    writel(ctrl_ext & 4294967285U, (void volatile *)(pbpctl_dev->mem_map + 40UL));
  }
  if (pbpctl_dev->wdt_status == 1) {
    pbpctl_dev->bypass_wdt_on_time = jiffies;
  } else {
  }
  spin_unlock_irqrestore(& pbpctl_dev->bypass_wr_lock, flags);
  __const_udelay(3436000UL);
  return (0);
}
}
static void data_pulse(bpctl_dev_t *pbpctl_dev , unsigned char value )
{
  uint32_t ctrl_ext ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ctrl_ext = 0U;
  wdt_time_left(pbpctl_dev);
  tmp = spinlock_check(& pbpctl_dev->bypass_wr_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
  writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(171800UL);
  writel((ctrl_ext & 4294964031U) | 3136U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(171800UL);
  goto ldv_40438;
  ldv_40437:
  writel(ctrl_ext | 3264U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(21475UL);
  writel((ctrl_ext & 4294964031U) | 3136U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(21475UL);
  value = (unsigned char )((int )value - 1);
  ldv_40438: ;
  if ((unsigned int )value != 0U) {
    goto ldv_40437;
  } else {
  }
  __const_udelay(150325UL);
  writel((ctrl_ext & 4294964031U) | 3072U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(12885UL);
  if (pbpctl_dev->wdt_status == 1) {
    pbpctl_dev->bypass_wdt_on_time = jiffies;
  } else {
  }
  spin_unlock_irqrestore(& pbpctl_dev->bypass_wr_lock, flags);
  return;
}
}
static int send_wdt_pulse(bpctl_dev_t *pbpctl_dev )
{
  uint32_t ctrl_ext ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  ctrl_ext = 0U;
  tmp = spinlock_check(& pbpctl_dev->bypass_wr_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  wdt_time_left(pbpctl_dev);
  ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
  writel(ctrl_ext | 2176U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(21475UL);
  writel((ctrl_ext & 4294965119U) | 2048U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(21475UL);
  if (pbpctl_dev->wdt_status == 1) {
    pbpctl_dev->bypass_wdt_on_time = jiffies;
  } else {
  }
  spin_unlock_irqrestore(& pbpctl_dev->bypass_wr_lock, flags);
  return (0);
}
}
void send_bypass_clear_pulse(bpctl_dev_t *pbpctl_dev , unsigned int value )
{
  uint32_t ctrl_ext ;
  {
  ctrl_ext = 0U;
  ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
  writel((ctrl_ext & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(21475UL);
  goto ldv_40459;
  ldv_40458:
  writel(ctrl_ext | 1088U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(21475UL);
  value = value - 1U;
  ldv_40459: ;
  if (value != 0U) {
    goto ldv_40458;
  } else {
  }
  writel((ctrl_ext & 4294966207U) | 1024U, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  __const_udelay(21475UL);
  return;
}
}
static bpctl_dev_t *get_status_port_fn(bpctl_dev_t *pbpctl_dev )
{
  int idx_dev ;
  {
  idx_dev = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )pbpctl_dev->func == 0U || (unsigned int )pbpctl_dev->func == 2U) {
    idx_dev = 0;
    goto ldv_40467;
    ldv_40466: ;
    if (((int )(bpctl_dev_arr + (unsigned long )idx_dev)->bus == (int )pbpctl_dev->bus && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->slot == (int )pbpctl_dev->slot) && ((unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 1U && (unsigned int )pbpctl_dev->func == 0U)) {
      return (bpctl_dev_arr + (unsigned long )idx_dev);
    } else {
    }
    if (((int )(bpctl_dev_arr + (unsigned long )idx_dev)->bus == (int )pbpctl_dev->bus && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->slot == (int )pbpctl_dev->slot) && ((unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 3U && (unsigned int )pbpctl_dev->func == 2U)) {
      return (bpctl_dev_arr + (unsigned long )idx_dev);
    } else {
    }
    idx_dev = idx_dev + 1;
    ldv_40467: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
      goto ldv_40466;
    } else {
    }
  } else {
  }
  return (0);
}
}
static bpctl_dev_t *get_master_port_fn(bpctl_dev_t *pbpctl_dev )
{
  int idx_dev ;
  {
  idx_dev = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )pbpctl_dev->func == 1U || (unsigned int )pbpctl_dev->func == 3U) {
    idx_dev = 0;
    goto ldv_40474;
    ldv_40473: ;
    if (((int )(bpctl_dev_arr + (unsigned long )idx_dev)->bus == (int )pbpctl_dev->bus && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->slot == (int )pbpctl_dev->slot) && ((unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 0U && (unsigned int )pbpctl_dev->func == 1U)) {
      return (bpctl_dev_arr + (unsigned long )idx_dev);
    } else {
    }
    if (((int )(bpctl_dev_arr + (unsigned long )idx_dev)->bus == (int )pbpctl_dev->bus && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->slot == (int )pbpctl_dev->slot) && ((unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 2U && (unsigned int )pbpctl_dev->func == 3U)) {
      return (bpctl_dev_arr + (unsigned long )idx_dev);
    } else {
    }
    idx_dev = idx_dev + 1;
    ldv_40474: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
      goto ldv_40473;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void write_data_port_int(bpctl_dev_t *pbpctl_dev , unsigned char ctrl_value )
{
  uint32_t value ;
  {
  value = readl((void const volatile *)pbpctl_dev->mem_map);
  value = value | 4194304U;
  writel(value, (void volatile *)pbpctl_dev->mem_map);
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  value = value & 4294705151U;
  value = (uint32_t )(((int )ctrl_value & 1) << 18) | value;
  writel(value, (void volatile *)pbpctl_dev->mem_map);
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  value = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
  value = value | 1024U;
  writel(value, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  value = value & 4294967231U;
  value = (uint32_t )((((int )ctrl_value & 2) >> 1) << 6) | value;
  writel(value, (void volatile *)(pbpctl_dev->mem_map + 24UL));
  readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
  return;
}
}
static int write_data_int(bpctl_dev_t *pbpctl_dev , unsigned char value )
{
  bpctl_dev_t *pbpctl_dev_b ;
  {
  pbpctl_dev_b = 0;
  pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
  if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  atomic_set(& pbpctl_dev->wdt_busy, 1);
  write_data_port_int(pbpctl_dev, (int )value & 3);
  write_data_port_int(pbpctl_dev_b, (int )((unsigned char )(((int )value & 12) >> 2)));
  atomic_set(& pbpctl_dev->wdt_busy, 0);
  return (0);
}
}
static int wdt_pulse_int(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  int tmp___0 ;
  int i ;
  int tmp___1 ;
  int i___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& pbpctl_dev->wdt_busy));
  if (tmp == 1) {
    return (-1);
  } else {
  }
  tmp___0 = write_data_int(pbpctl_dev, 1);
  if (tmp___0 < 0) {
    return (-1);
  } else {
  }
  i = 0;
  goto ldv_40495;
  ldv_40494:
  __const_udelay(8590UL);
  i = i + 1;
  ldv_40495: ;
  if (i <= 999) {
    goto ldv_40494;
  } else {
  }
  tmp___1 = write_data_int(pbpctl_dev, 15);
  if (tmp___1 < 0) {
    return (-1);
  } else {
  }
  i___0 = 0;
  goto ldv_40499;
  ldv_40498:
  __const_udelay(8590UL);
  i___0 = i___0 + 1;
  ldv_40499: ;
  if (i___0 <= 999) {
    goto ldv_40498;
  } else {
  }
  if (pbpctl_dev->wdt_status == 1) {
    pbpctl_dev->bypass_wdt_on_time = jiffies;
  } else {
  }
  return (0);
}
}
int cmnd_on(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      return (0);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver >= 0) {
      write_data(pbpctl_dev, 4);
    } else {
      data_pulse(pbpctl_dev, 4);
    }
    ret = 0;
  } else {
  }
  return (ret);
}
}
int cmnd_off(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int i ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      write_data_int(pbpctl_dev, 15);
      i = 0;
      goto ldv_40511;
      ldv_40510:
      __const_udelay(8590UL);
      i = i + 1;
      ldv_40511: ;
      if (i <= 999) {
        goto ldv_40510;
      } else {
      }
    } else
    if (pbpctl_dev->bp_ext_ver >= 0) {
      write_data(pbpctl_dev, 2);
    } else {
      data_pulse(pbpctl_dev, 2);
    }
    ret = 0;
  } else {
  }
  return (ret);
}
}
int bypass_on(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int i ;
  int i___0 ;
  {
  ret = -1;
  if ((int )pbpctl_dev->bp_caps & 1) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      write_data_int(pbpctl_dev, 6);
      i = 0;
      goto ldv_40519;
      ldv_40518:
      __const_udelay(17180UL);
      i = i + 1;
      ldv_40519: ;
      if (i <= 999) {
        goto ldv_40518;
      } else {
      }
      pbpctl_dev->bp_status_un = 0U;
    } else
    if (pbpctl_dev->bp_ext_ver >= 0) {
      write_data(pbpctl_dev, 10);
      if (pbpctl_dev->bp_ext_ver > 0) {
        i___0 = 0;
        goto ldv_40523;
        ldv_40522:
        __const_udelay(55835UL);
        i___0 = i___0 + 1;
        ldv_40523: ;
        if (i___0 <= 999) {
          goto ldv_40522;
        } else {
        }
      } else {
      }
    } else {
      data_pulse(pbpctl_dev, 10);
    }
    ret = 0;
  } else {
  }
  return (ret);
}
}
int bypass_off(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int i ;
  int i___0 ;
  int i___1 ;
  {
  ret = -1;
  if ((int )pbpctl_dev->bp_caps & 1) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      write_data_int(pbpctl_dev, 4);
      i = 0;
      goto ldv_40531;
      ldv_40530:
      __const_udelay(17180UL);
      i = i + 1;
      ldv_40531: ;
      if (i <= 999) {
        goto ldv_40530;
      } else {
      }
      write_data_int(pbpctl_dev, 5);
      i___0 = 0;
      goto ldv_40535;
      ldv_40534:
      __const_udelay(17180UL);
      i___0 = i___0 + 1;
      ldv_40535: ;
      if (i___0 <= 999) {
        goto ldv_40534;
      } else {
      }
      pbpctl_dev->bp_status_un = 0U;
    } else
    if (pbpctl_dev->bp_ext_ver >= 0) {
      write_data(pbpctl_dev, 8);
      if (pbpctl_dev->bp_ext_ver > 0) {
        i___1 = 0;
        goto ldv_40539;
        ldv_40538:
        __const_udelay(55835UL);
        i___1 = i___1 + 1;
        ldv_40539: ;
        if (i___1 <= 999) {
          goto ldv_40538;
        } else {
        }
      } else {
      }
    } else {
      data_pulse(pbpctl_dev, 8);
    }
    ret = 0;
  } else {
  }
  return (ret);
}
}
int tap_off(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int i ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 262144U) != 0U && pbpctl_dev->bp_ext_ver > 0) {
    write_data(pbpctl_dev, 9);
    i = 0;
    goto ldv_40547;
    ldv_40546:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40547: ;
    if (i <= 999) {
      goto ldv_40546;
    } else {
    }
    ret = 0;
  } else {
  }
  return (ret);
}
}
int tap_on(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int i ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 262144U) != 0U && pbpctl_dev->bp_ext_ver > 0) {
    write_data(pbpctl_dev, 11);
    i = 0;
    goto ldv_40555;
    ldv_40554:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40555: ;
    if (i <= 999) {
      goto ldv_40554;
    } else {
    }
    ret = 0;
  } else {
  }
  return (ret);
}
}
int disc_off(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int i ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U && pbpctl_dev->bp_ext_ver > 7) {
    write_data(pbpctl_dev, 138);
    i = 0;
    goto ldv_40563;
    ldv_40562:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40563: ;
    if (i <= 999) {
      goto ldv_40562;
    } else {
    }
  } else {
    ret = -1;
  }
  return (ret);
}
}
int disc_on(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int i ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U && pbpctl_dev->bp_ext_ver > 7) {
    write_data(pbpctl_dev, 133);
    i = 0;
    goto ldv_40571;
    ldv_40570:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40571: ;
    if (i <= 999) {
      goto ldv_40570;
    } else {
    }
  } else {
    ret = -1;
  }
  return (ret);
}
}
int disc_port_on(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  int tmp___0 ;
  int i ;
  {
  ret = 0;
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    tmp___0 = is_bypass_fn(pbpctl_dev);
    if (tmp___0 == 1) {
      write_data(pbpctl_dev_m, 141);
    } else {
      write_data(pbpctl_dev_m, 142);
    }
    i = 0;
    goto ldv_40580;
    ldv_40579:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40580: ;
    if (i <= 999) {
      goto ldv_40579;
    } else {
    }
  } else {
  }
  return (ret);
}
}
int disc_port_off(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  int tmp___0 ;
  int i ;
  {
  ret = 0;
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    tmp___0 = is_bypass_fn(pbpctl_dev);
    if (tmp___0 == 1) {
      write_data(pbpctl_dev_m, 160);
    } else {
      write_data(pbpctl_dev_m, 161);
    }
    i = 0;
    goto ldv_40589;
    ldv_40588:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40589: ;
    if (i <= 999) {
      goto ldv_40588;
    } else {
    }
  } else {
  }
  return (ret);
}
}
int tpl_hw_on(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int ctrl ;
  bpctl_dev_t *pbpctl_dev_b ;
  int i ;
  unsigned int tmp ;
  {
  ret = 0;
  ctrl = 0;
  pbpctl_dev_b = 0;
  pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
  if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((int )pbpctl_dev->bp_caps_ex & 1) {
    cmnd_on(pbpctl_dev);
    write_data(pbpctl_dev, 140);
    i = 0;
    goto ldv_40599;
    ldv_40598:
    __const_udelay(90195UL);
    i = i + 1;
    ldv_40599: ;
    if (i <= 999) {
      goto ldv_40598;
    } else {
    }
    cmnd_off(pbpctl_dev);
    return (ret);
  } else {
  }
  if ((((pbpctl_dev->subdevice == 47U || pbpctl_dev->subdevice == 48U) || pbpctl_dev->subdevice == 42U) || pbpctl_dev->subdevice == 67U) || pbpctl_dev->subdevice == 45U) {
    tmp = readl((void const volatile *)pbpctl_dev_b->mem_map);
    ctrl = (int )tmp;
    writel((unsigned int )(((long )ctrl & 4290510847L) | 4194304L), (void volatile *)pbpctl_dev_b->mem_map);
    readl((void const volatile *)(pbpctl_dev_b->mem_map + 8UL));
  } else {
    ret = -1;
  }
  return (ret);
}
}
int tpl_hw_off(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int ctrl ;
  bpctl_dev_t *pbpctl_dev_b ;
  int i ;
  unsigned int tmp ;
  {
  ret = 0;
  ctrl = 0;
  pbpctl_dev_b = 0;
  pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
  if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((int )pbpctl_dev->bp_caps_ex & 1) {
    cmnd_on(pbpctl_dev);
    write_data(pbpctl_dev, 139);
    i = 0;
    goto ldv_40610;
    ldv_40609:
    __const_udelay(90195UL);
    i = i + 1;
    ldv_40610: ;
    if (i <= 999) {
      goto ldv_40609;
    } else {
    }
    cmnd_off(pbpctl_dev);
    return (ret);
  } else {
  }
  if ((((pbpctl_dev->subdevice == 47U || pbpctl_dev->subdevice == 48U) || pbpctl_dev->subdevice == 42U) || pbpctl_dev->subdevice == 67U) || pbpctl_dev->subdevice == 45U) {
    tmp = readl((void const volatile *)pbpctl_dev_b->mem_map);
    ctrl = (int )tmp;
    writel((unsigned int )(ctrl | 4456448), (void volatile *)pbpctl_dev_b->mem_map);
    readl((void const volatile *)(pbpctl_dev_b->mem_map + 8UL));
  } else {
    ret = -1;
  }
  return (ret);
}
}
int wdt_off(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      bypass_off(pbpctl_dev);
    } else
    if (pbpctl_dev->bp_ext_ver >= 0) {
      write_data(pbpctl_dev, 6);
    } else {
      data_pulse(pbpctl_dev, 6);
    }
    pbpctl_dev->wdt_status = 0;
    ret = 0;
  } else {
  }
  return (ret);
}
}
static unsigned int wdt_val_array[9U] =
  { 1000U, 1500U, 2000U, 3000U,
        4000U, 8000U, 16000U, 32000U,
        0U};
int wdt_on(bpctl_dev_t *pbpctl_dev , unsigned int timeout )
{
  unsigned int pulse ;
  unsigned int temp_value ;
  unsigned int temp_cnt ;
  int i ;
  int i___0 ;
  {
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    pulse = 0U;
    temp_value = 0U;
    temp_cnt = 0U;
    pbpctl_dev->wdt_status = 0;
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      goto ldv_40627;
      ldv_40626: ;
      if (wdt_val_array[temp_cnt] >= timeout) {
        goto ldv_40625;
      } else {
      }
      temp_cnt = temp_cnt + 1U;
      ldv_40627: ;
      if (wdt_val_array[temp_cnt] != 0U) {
        goto ldv_40626;
      } else {
      }
      ldv_40625: ;
      if (wdt_val_array[temp_cnt] == 0U) {
        temp_cnt = temp_cnt - 1U;
      } else {
      }
      timeout = wdt_val_array[temp_cnt];
      temp_cnt = temp_cnt + 7U;
      write_data_int(pbpctl_dev, 4);
      i = 0;
      goto ldv_40630;
      ldv_40629:
      __const_udelay(17180UL);
      i = i + 1;
      ldv_40630: ;
      if (i <= 999) {
        goto ldv_40629;
      } else {
      }
      pbpctl_dev->bp_status_un = 0U;
      write_data_int(pbpctl_dev, (int )((unsigned char )temp_cnt));
      pbpctl_dev->bypass_wdt_on_time = jiffies;
      i___0 = 0;
      goto ldv_40634;
      ldv_40633:
      __const_udelay(8590UL);
      i___0 = i___0 + 1;
      ldv_40634: ;
      if (i___0 <= 999) {
        goto ldv_40633;
      } else {
      }
      pbpctl_dev->bypass_timer_interval = timeout;
    } else {
      timeout = timeout > 99U ? (3276800U < timeout ? 3276800U : timeout) : 100U;
      temp_value = timeout / 100U;
      goto ldv_40637;
      ldv_40636:
      temp_cnt = temp_cnt + 1U;
      ldv_40637:
      temp_value = temp_value >> 1;
      if (temp_value != 0U) {
        goto ldv_40636;
      } else {
      }
      if ((unsigned int )(100 << (int )temp_cnt) < timeout) {
        temp_cnt = temp_cnt + 1U;
      } else {
      }
      pbpctl_dev->bypass_wdt_on_time = jiffies;
      pulse = temp_cnt | 16U;
      if (pbpctl_dev->bp_ext_ver == -1) {
        data_pulse(pbpctl_dev, (int )((unsigned char )pulse));
      } else {
        write_data(pbpctl_dev, (int )((unsigned char )pulse));
      }
      pbpctl_dev->bypass_timer_interval = (uint32_t )(100 << (int )temp_cnt);
    }
    pbpctl_dev->wdt_status = 1;
    return (0);
  } else {
  }
  return (-1);
}
}
void bp75_put_hw_semaphore_generic(bpctl_dev_t *pbpctl_dev )
{
  u32 swsm ;
  {
  swsm = readl((void const volatile *)(pbpctl_dev->mem_map + 23376UL));
  swsm = swsm & 4294967292U;
  writel(swsm, (void volatile *)(pbpctl_dev->mem_map + 23376UL));
  return;
}
}
s32 bp75_get_hw_semaphore_generic(bpctl_dev_t *pbpctl_dev )
{
  u32 swsm ;
  s32 ret_val ;
  s32 timeout ;
  s32 i ;
  unsigned int tmp ;
  {
  ret_val = 0;
  timeout = 8193;
  i = 0;
  goto ldv_40652;
  ldv_40651:
  swsm = readl((void const volatile *)(pbpctl_dev->mem_map + 23376UL));
  if ((swsm & 1U) == 0U) {
    goto ldv_40650;
  } else {
  }
  __const_udelay(214750UL);
  i = i + 1;
  ldv_40652: ;
  if (i < timeout) {
    goto ldv_40651;
  } else {
  }
  ldv_40650: ;
  if (i == timeout) {
    printk("bpctl_mod: Driver can\'t access device - SMBI bit is set.\n");
    ret_val = -1;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_40656;
  ldv_40655:
  swsm = readl((void const volatile *)(pbpctl_dev->mem_map + 23376UL));
  writel(swsm | 2U, (void volatile *)(pbpctl_dev->mem_map + 23376UL));
  tmp = readl((void const volatile *)(pbpctl_dev->mem_map + 23376UL));
  if ((tmp & 2U) != 0U) {
    goto ldv_40654;
  } else {
  }
  __const_udelay(214750UL);
  i = i + 1;
  ldv_40656: ;
  if (i < timeout) {
    goto ldv_40655;
  } else {
  }
  ldv_40654: ;
  if (i == timeout) {
    bp75_put_hw_semaphore_generic(pbpctl_dev);
    printk("bpctl_mod: Driver can\'t access the NVM\n");
    ret_val = -1;
    goto out;
  } else {
  }
  out: ;
  return (ret_val);
}
}
static void bp75_release_phy(bpctl_dev_t *pbpctl_dev )
{
  u16 mask ;
  u32 swfw_sync ;
  s32 tmp ;
  {
  mask = 2U;
  if ((unsigned int )pbpctl_dev->func == 1U || (unsigned int )pbpctl_dev->func == 3U) {
    mask = 4U;
  } else {
  }
  goto ldv_40663;
  ldv_40662: ;
  ldv_40663:
  tmp = bp75_get_hw_semaphore_generic(pbpctl_dev);
  if (tmp != 0) {
    goto ldv_40662;
  } else {
  }
  swfw_sync = readl((void const volatile *)(pbpctl_dev->mem_map + 23388UL));
  swfw_sync = (u32 )(~ ((int )mask)) & swfw_sync;
  writel(swfw_sync, (void volatile *)(pbpctl_dev->mem_map + 23388UL));
  bp75_put_hw_semaphore_generic(pbpctl_dev);
  return;
}
}
static s32 bp75_acquire_phy(bpctl_dev_t *pbpctl_dev )
{
  u16 mask ;
  u32 swfw_sync ;
  u32 swmask ;
  u32 fwmask ;
  s32 ret_val ;
  s32 i ;
  s32 timeout ;
  s32 tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  mask = 2U;
  ret_val = 0;
  i = 0;
  timeout = 200;
  if ((unsigned int )pbpctl_dev->func == 1U || (unsigned int )pbpctl_dev->func == 3U) {
    mask = 4U;
  } else {
  }
  swmask = (u32 )mask;
  fwmask = (u32 )((int )mask << 16);
  goto ldv_40682;
  ldv_40681:
  tmp = bp75_get_hw_semaphore_generic(pbpctl_dev);
  if (tmp != 0) {
    ret_val = -1;
    goto out;
  } else {
  }
  swfw_sync = readl((void const volatile *)(pbpctl_dev->mem_map + 23388UL));
  if (((fwmask | swmask) & swfw_sync) == 0U) {
    goto ldv_40676;
  } else {
  }
  bp75_put_hw_semaphore_generic(pbpctl_dev);
  if (1) {
    __const_udelay(21475000UL);
  } else {
    __ms = 5UL;
    goto ldv_40679;
    ldv_40678:
    __const_udelay(4295000UL);
    ldv_40679:
    tmp___0 = __ms;
    __ms = __ms - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_40678;
    } else {
    }
  }
  i = i + 1;
  ldv_40682: ;
  if (i < timeout) {
    goto ldv_40681;
  } else {
  }
  ldv_40676: ;
  if (i == timeout) {
    printk("bpctl_mod: Driver can\'t access resource, SW_FW_SYNC timeout.\n");
    ret_val = -1;
    goto out;
  } else {
  }
  swfw_sync = swfw_sync | swmask;
  writel(swfw_sync, (void volatile *)(pbpctl_dev->mem_map + 23388UL));
  bp75_put_hw_semaphore_generic(pbpctl_dev);
  out: ;
  return (ret_val);
}
}
s32 bp75_read_phy_reg_mdic(bpctl_dev_t *pbpctl_dev , u32 offset , u16 *data )
{
  u32 i ;
  u32 mdic ;
  s32 ret_val ;
  u32 phy_addr ;
  {
  mdic = 0U;
  ret_val = 0;
  phy_addr = 1U;
  mdic = ((offset << 16) | (phy_addr << 21)) | 134217728U;
  writel(mdic, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  i = 0U;
  goto ldv_40694;
  ldv_40693:
  __const_udelay(214750UL);
  mdic = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
  if ((mdic & 268435456U) != 0U) {
    goto ldv_40692;
  } else {
  }
  i = i + 1U;
  ldv_40694: ;
  if (i <= 1919U) {
    goto ldv_40693;
  } else {
  }
  ldv_40692: ;
  if ((mdic & 268435456U) == 0U) {
    printk("bpctl_mod: MDI Read did not complete\n");
    ret_val = -1;
    goto out;
  } else {
  }
  if ((mdic & 1073741824U) != 0U) {
    printk("bpctl_mod: MDI Error\n");
    ret_val = -1;
    goto out;
  } else {
  }
  *data = (unsigned short )mdic;
  out: ;
  return (ret_val);
}
}
s32 bp75_write_phy_reg_mdic(bpctl_dev_t *pbpctl_dev , u32 offset , u16 data )
{
  u32 i ;
  u32 mdic ;
  s32 ret_val ;
  u32 phy_addr ;
  {
  mdic = 0U;
  ret_val = 0;
  phy_addr = 1U;
  mdic = (((unsigned int )data | (offset << 16)) | (phy_addr << 21)) | 67108864U;
  writel(mdic, (void volatile *)(pbpctl_dev->mem_map + 32UL));
  i = 0U;
  goto ldv_40707;
  ldv_40706:
  __const_udelay(214750UL);
  mdic = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
  if ((mdic & 268435456U) != 0U) {
    goto ldv_40705;
  } else {
  }
  i = i + 1U;
  ldv_40707: ;
  if (i <= 1919U) {
    goto ldv_40706;
  } else {
  }
  ldv_40705: ;
  if ((mdic & 268435456U) == 0U) {
    printk("bpctl_mod: MDI Write did not complete\n");
    ret_val = -1;
    goto out;
  } else {
  }
  if ((mdic & 1073741824U) != 0U) {
    printk("bpctl_mod: MDI Error\n");
    ret_val = -1;
    goto out;
  } else {
  }
  out: ;
  return (ret_val);
}
}
static s32 bp75_read_phy_reg(bpctl_dev_t *pbpctl_dev , u32 offset , u16 *data )
{
  s32 ret_val ;
  {
  ret_val = 0;
  ret_val = bp75_acquire_phy(pbpctl_dev);
  if (ret_val != 0) {
    goto out;
  } else {
  }
  if (offset > 15U) {
    ret_val = bp75_write_phy_reg_mdic(pbpctl_dev, 31U, (int )((unsigned short )offset));
    if (ret_val != 0) {
      goto release;
    } else {
    }
  } else {
  }
  ret_val = bp75_read_phy_reg_mdic(pbpctl_dev, offset & 31U, data);
  release:
  bp75_release_phy(pbpctl_dev);
  out: ;
  return (ret_val);
}
}
static s32 bp75_write_phy_reg(bpctl_dev_t *pbpctl_dev , u32 offset , u16 data )
{
  s32 ret_val ;
  {
  ret_val = 0;
  ret_val = bp75_acquire_phy(pbpctl_dev);
  if (ret_val != 0) {
    goto out;
  } else {
  }
  if (offset > 15U) {
    ret_val = bp75_write_phy_reg_mdic(pbpctl_dev, 31U, (int )((unsigned short )offset));
    if (ret_val != 0) {
      goto release;
    } else {
    }
  } else {
  }
  ret_val = bp75_write_phy_reg_mdic(pbpctl_dev, offset & 31U, (int )data);
  release:
  bp75_release_phy(pbpctl_dev);
  out: ;
  return (ret_val);
}
}
static int set_tx(bpctl_dev_t *pbpctl_dev , int tx_state )
{
  int ret ;
  int ctrl ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  uint16_t mii_reg ;
  uint16_t mii_reg___0 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  {
  ret = 0;
  ctrl = 0;
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    tmp___0 = readl((void const volatile *)pbpctl_dev->mem_map);
    ctrl = (int )tmp___0;
    if (tx_state == 0) {
      if (pbpctl_dev->bp_540 != 0) {
        tmp___1 = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
        ctrl = (int )tmp___1;
        writel((unsigned int )(ctrl | 514), (void volatile *)(pbpctl_dev->mem_map + 32UL));
      } else {
        writel((unsigned int )(ctrl | 8912896), (void volatile *)pbpctl_dev->mem_map);
        readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      }
    } else {
      if (pbpctl_dev->bp_540 != 0) {
        tmp___2 = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
        ctrl = (int )tmp___2;
        writel((unsigned int )(((long )ctrl & 4294966781L) | 512L), (void volatile *)(pbpctl_dev->mem_map + 32UL));
      } else {
        writel((unsigned int )(((long )ctrl & 4286054399L) | 8388608L), (void volatile *)pbpctl_dev->mem_map);
        readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      }
      return (ret);
    }
  } else
  if ((pbpctl_dev->bp_caps & 65536U) != 0U) {
    if ((((((((((((((pbpctl_dev->subdevice == 800U || pbpctl_dev->subdevice == 768U) || pbpctl_dev->subdevice == 808U) || pbpctl_dev->subdevice == 832U) || pbpctl_dev->subdevice == 864U) || pbpctl_dev->subdevice == 784U) || pbpctl_dev->subdevice == 792U) || pbpctl_dev->subdevice == 816U) || pbpctl_dev->subdevice == 1024U) || pbpctl_dev->subdevice == 1056U) || pbpctl_dev->subdevice == 1088U) || pbpctl_dev->subdevice == 83U) || pbpctl_dev->subdevice == 70U) || pbpctl_dev->subdevice == 84U) || pbpctl_dev->subdevice == 82U) {
      if (tx_state != 0) {
        ret = bp75_read_phy_reg(pbpctl_dev, 0U, & mii_reg);
        if (ret == 0) {
          if (((int )mii_reg & 2048) != 0) {
            ret = bp75_write_phy_reg(pbpctl_dev, 0U, (int )mii_reg & 63487);
          } else {
          }
        } else {
        }
      } else {
        ret = bp75_read_phy_reg(pbpctl_dev, 0U, & mii_reg___0);
        if (ret == 0) {
          mii_reg___0 = (uint16_t )((unsigned int )mii_reg___0 | 2048U);
          ret = bp75_write_phy_reg(pbpctl_dev, 0U, (int )mii_reg___0);
        } else {
        }
      }
    } else {
    }
    if (pbpctl_dev->bp_fiber5 != 0) {
      tmp___3 = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
      ctrl = (int )tmp___3;
    } else
    if (pbpctl_dev->bp_10gb != 0) {
      tmp___4 = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
      ctrl = (int )tmp___4;
    } else
    if (pbpctl_dev->bp_10g == 0) {
      tmp___5 = readl((void const volatile *)pbpctl_dev->mem_map);
      ctrl = (int )tmp___5;
    } else {
      tmp___6 = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
      ctrl = (int )tmp___6;
    }
    if (tx_state == 0) {
      if (pbpctl_dev->bp_10g9 != 0) {
        writel((unsigned int )(ctrl | 2056), (void volatile *)(pbpctl_dev->mem_map + 32UL));
      } else
      if (pbpctl_dev->bp_fiber5 != 0) {
        writel((unsigned int )(ctrl | 1088), (void volatile *)(pbpctl_dev->mem_map + 24UL));
        readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      } else
      if (pbpctl_dev->bp_10gb != 0) {
        if ((unsigned int )pbpctl_dev->func == 1U || (unsigned int )pbpctl_dev->func == 3U) {
          writel((unsigned int )(((long )ctrl & 4025479167L) | 4096L), (void volatile *)(pbpctl_dev->mem_map + 42128UL));
        } else {
          writel((unsigned int )(ctrl | 16777472), (void volatile *)(pbpctl_dev->mem_map + 42128UL));
        }
      } else
      if (pbpctl_dev->bp_i80 != 0) {
        writel((unsigned int )(ctrl | 8912896), (void volatile *)pbpctl_dev->mem_map);
        readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      } else
      if (pbpctl_dev->bp_540 != 0) {
        tmp___7 = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
        ctrl = (int )tmp___7;
        writel((unsigned int )(ctrl | 514), (void volatile *)(pbpctl_dev->mem_map + 32UL));
      } else
      if (pbpctl_dev->bp_10g == 0) {
        writel((unsigned int )(ctrl | 4456448), (void volatile *)pbpctl_dev->mem_map);
        readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      } else {
        writel((unsigned int )(ctrl | 257), (void volatile *)(pbpctl_dev->mem_map + 32UL));
      }
    } else
    if (pbpctl_dev->bp_10g9 != 0) {
      writel((unsigned int )(((long )ctrl & 4294965239L) | 2048L), (void volatile *)(pbpctl_dev->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_fiber5 != 0) {
      writel((unsigned int )(((long )ctrl & 4294966207L) | 1024L), (void volatile *)(pbpctl_dev->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_10gb != 0) {
      if ((unsigned int )bpctl_dev_arr->func == 1U || (unsigned int )bpctl_dev_arr->func == 3U) {
        writel((unsigned int )(((long )ctrl & 4025479167L) | 1048576L), (void volatile *)(pbpctl_dev->mem_map + 42128UL));
      } else {
        writel((unsigned int )(ctrl | 16842752), (void volatile *)(pbpctl_dev->mem_map + 42128UL));
      }
    } else
    if (pbpctl_dev->bp_i80 != 0) {
      writel((unsigned int )(((long )ctrl & 4286054399L) | 8388608L), (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    } else
    if (pbpctl_dev->bp_540 != 0) {
      tmp___8 = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
      ctrl = (int )tmp___8;
      writel((unsigned int )(((long )ctrl & 4294966781L) | 512L), (void volatile *)(pbpctl_dev->mem_map + 32UL));
    } else
    if (pbpctl_dev->bp_10g == 0) {
      writel((unsigned int )(((long )ctrl & 4290510847L) | 4194304L), (void volatile *)pbpctl_dev->mem_map);
      readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      if (((((((((((pbpctl_dev->subdevice != 57U && pbpctl_dev->subdevice != 71U) && pbpctl_dev->subdevice != 76U) && pbpctl_dev->subdevice != 58U) && pbpctl_dev->subdevice != 64U) && pbpctl_dev->subdevice != 88U) && pbpctl_dev->subdevice != 72U) && pbpctl_dev->subdevice != 73U) && pbpctl_dev->subdevice != 74U) && pbpctl_dev->subdevice != 62U) && pbpctl_dev->subdevice != 75U) && pbpctl_dev->subdevice != 78U) {
        writel((unsigned int )ctrl & 4290510847U, (void volatile *)pbpctl_dev->mem_map);
        readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
      } else {
      }
    } else {
      writel((unsigned int )(((long )ctrl & 4294967038L) | 256L), (void volatile *)(pbpctl_dev->mem_map + 32UL));
    }
  } else {
    ret = -1;
  }
  return (ret);
}
}
static int set_bp_force_link(bpctl_dev_t *pbpctl_dev , int tx_state )
{
  int ret ;
  int ctrl ;
  unsigned int tmp ;
  {
  ret = 0;
  ctrl = 0;
  if (((pbpctl_dev->subdevice == 385U || pbpctl_dev->subdevice == 386U) || pbpctl_dev->subdevice == 355U) || pbpctl_dev->subdevice == 393U) {
    if (pbpctl_dev->bp_10g != 0 || pbpctl_dev->bp_10g9 != 0) {
      tmp = readl((void const volatile *)pbpctl_dev->mem_map);
      ctrl = (int )tmp;
      if (tx_state == 0) {
        writel((unsigned int )ctrl & 4294966783U, (void volatile *)(pbpctl_dev->mem_map + 32UL));
      } else {
        writel((unsigned int )(((long )ctrl & 4294966781L) | 512L), (void volatile *)(pbpctl_dev->mem_map + 32UL));
      }
      return (ret);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int reset_cont(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      return (-1);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver >= 0) {
      write_data(pbpctl_dev, 32);
    } else {
      data_pulse(pbpctl_dev, 32);
    }
    ret = 0;
  } else {
  }
  return (ret);
}
}
int dis_bypass_cap(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  int i___0 ;
  int i___1 ;
  {
  if ((pbpctl_dev->bp_caps & 16U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      write_data_int(pbpctl_dev, 4);
      i = 0;
      goto ldv_40758;
      ldv_40757:
      __const_udelay(17180UL);
      i = i + 1;
      ldv_40758: ;
      if (i <= 999) {
        goto ldv_40757;
      } else {
      }
    } else {
      write_data(pbpctl_dev, 8);
      i___0 = 0;
      goto ldv_40762;
      ldv_40761:
      __const_udelay(55835UL);
      i___0 = i___0 + 1;
      ldv_40762: ;
      if (i___0 <= 999) {
        goto ldv_40761;
      } else {
      }
      write_data(pbpctl_dev, 34);
      i___1 = 0;
      goto ldv_40766;
      ldv_40765:
      __const_udelay(90195UL);
      i___1 = i___1 + 1;
      ldv_40766: ;
      if (i___1 <= 999) {
        goto ldv_40765;
      } else {
      }
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int en_bypass_cap(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  int i___0 ;
  {
  if ((pbpctl_dev->bp_caps & 16U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      write_data_int(pbpctl_dev, 5);
      i = 0;
      goto ldv_40773;
      ldv_40772:
      __const_udelay(17180UL);
      i = i + 1;
      ldv_40773: ;
      if (i <= 999) {
        goto ldv_40772;
      } else {
      }
    } else {
      write_data(pbpctl_dev, 36);
      i___0 = 0;
      goto ldv_40777;
      ldv_40776:
      __const_udelay(90195UL);
      i___0 = i___0 + 1;
      ldv_40777: ;
      if (i___0 <= 999) {
        goto ldv_40776;
      } else {
      }
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int bypass_state_pwron(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  int i___0 ;
  {
  if ((pbpctl_dev->bp_caps & 4096U) != 0U) {
    write_data(pbpctl_dev, 38);
    if (pbpctl_dev->bp_ext_ver == 0) {
      i = 0;
      goto ldv_40784;
      ldv_40783:
      __const_udelay(42950UL);
      i = i + 1;
      ldv_40784: ;
      if (i <= 999) {
        goto ldv_40783;
      } else {
      }
    } else {
      i___0 = 0;
      goto ldv_40788;
      ldv_40787:
      __const_udelay(90195UL);
      i___0 = i___0 + 1;
      ldv_40788: ;
      if (i___0 <= 999) {
        goto ldv_40787;
      } else {
      }
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int normal_state_pwron(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  int i___0 ;
  {
  if ((pbpctl_dev->bp_caps & 4096U) != 0U || (pbpctl_dev->bp_caps & 33554432U) != 0U) {
    write_data(pbpctl_dev, 40);
    if (pbpctl_dev->bp_ext_ver == 0) {
      i = 0;
      goto ldv_40795;
      ldv_40794:
      __const_udelay(42950UL);
      i = i + 1;
      ldv_40795: ;
      if (i <= 999) {
        goto ldv_40794;
      } else {
      }
    } else {
      i___0 = 0;
      goto ldv_40799;
      ldv_40798:
      __const_udelay(90195UL);
      i___0 = i___0 + 1;
      ldv_40799: ;
      if (i___0 <= 999) {
        goto ldv_40798;
      } else {
      }
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int bypass_state_pwroff(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 512U) != 0U) {
    write_data(pbpctl_dev, 39);
    i = 0;
    goto ldv_40806;
    ldv_40805:
    __const_udelay(90195UL);
    i = i + 1;
    ldv_40806: ;
    if (i <= 999) {
      goto ldv_40805;
    } else {
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int normal_state_pwroff(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 512U) != 0U) {
    write_data(pbpctl_dev, 41);
    i = 0;
    goto ldv_40813;
    ldv_40812:
    __const_udelay(90195UL);
    i = i + 1;
    ldv_40813: ;
    if (i <= 999) {
      goto ldv_40812;
    } else {
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int tap_state_pwron(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 33554432U) != 0U) {
    write_data(pbpctl_dev, 42);
    i = 0;
    goto ldv_40820;
    ldv_40819:
    __const_udelay(90195UL);
    i = i + 1;
    ldv_40820: ;
    if (i <= 999) {
      goto ldv_40819;
    } else {
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int dis_tap_cap(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 2097152U) != 0U) {
    write_data(pbpctl_dev, 44);
    i = 0;
    goto ldv_40827;
    ldv_40826:
    __const_udelay(90195UL);
    i = i + 1;
    ldv_40827: ;
    if (i <= 999) {
      goto ldv_40826;
    } else {
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int en_tap_cap(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 2097152U) != 0U) {
    write_data(pbpctl_dev, 46);
    i = 0;
    goto ldv_40834;
    ldv_40833:
    __const_udelay(90195UL);
    i = i + 1;
    ldv_40834: ;
    if (i <= 999) {
      goto ldv_40833;
    } else {
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int disc_state_pwron(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 1073741824U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 135);
      i = 0;
      goto ldv_40841;
      ldv_40840:
      __const_udelay(90195UL);
      i = i + 1;
      ldv_40841: ;
      if (i <= 999) {
        goto ldv_40840;
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int dis_disc_cap(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 536870912U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 136);
      i = 0;
      goto ldv_40848;
      ldv_40847:
      __const_udelay(90195UL);
      i = i + 1;
      ldv_40848: ;
      if (i <= 999) {
        goto ldv_40847;
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int disc_port_state_pwron(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  int tmp___0 ;
  int i ;
  {
  ret = 0;
  return (-1);
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    tmp___0 = is_bypass_fn(pbpctl_dev);
    if (tmp___0 == 1) {
      write_data(pbpctl_dev_m, 162);
    } else {
      write_data(pbpctl_dev_m, 163);
    }
    i = 0;
    goto ldv_40857;
    ldv_40856:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40857: ;
    if (i <= 999) {
      goto ldv_40856;
    } else {
    }
  } else {
  }
  return (ret);
}
}
int normal_port_state_pwron(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  int tmp___0 ;
  int i ;
  {
  ret = 0;
  return (-1);
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    tmp___0 = is_bypass_fn(pbpctl_dev);
    if (tmp___0 == 1) {
      write_data(pbpctl_dev_m, 164);
    } else {
      write_data(pbpctl_dev_m, 165);
    }
    i = 0;
    goto ldv_40866;
    ldv_40865:
    __const_udelay(55835UL);
    i = i + 1;
    ldv_40866: ;
    if (i <= 999) {
      goto ldv_40865;
    } else {
    }
  } else {
  }
  return (ret);
}
}
int en_disc_cap(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 536870912U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 137);
      i = 0;
      goto ldv_40873;
      ldv_40872:
      __const_udelay(90195UL);
      i = i + 1;
      ldv_40873: ;
      if (i <= 999) {
        goto ldv_40872;
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int std_nic_on(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  int i___0 ;
  int i___1 ;
  int i___2 ;
  int i___3 ;
  int i___4 ;
  int i___5 ;
  int i___6 ;
  {
  if ((pbpctl_dev->bp_caps & 64U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      write_data_int(pbpctl_dev, 4);
      i = 0;
      goto ldv_40880;
      ldv_40879:
      __const_udelay(17180UL);
      i = i + 1;
      ldv_40880: ;
      if (i <= 999) {
        goto ldv_40879;
      } else {
      }
      pbpctl_dev->bp_status_un = 0U;
      return (0);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 132);
      i___0 = 0;
      goto ldv_40884;
      ldv_40883:
      __const_udelay(90195UL);
      i___0 = i___0 + 1;
      ldv_40884: ;
      if (i___0 <= 999) {
        goto ldv_40883;
      } else {
      }
      return (0);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver >= 0) {
      wdt_off(pbpctl_dev);
      if ((int )pbpctl_dev->bp_caps & 1) {
        write_data(pbpctl_dev, 8);
        i___1 = 0;
        goto ldv_40888;
        ldv_40887:
        __const_udelay(55835UL);
        i___1 = i___1 + 1;
        ldv_40888: ;
        if (i___1 <= 999) {
          goto ldv_40887;
        } else {
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
        write_data(pbpctl_dev, 9);
        i___2 = 0;
        goto ldv_40892;
        ldv_40891:
        __const_udelay(55835UL);
        i___2 = i___2 + 1;
        ldv_40892: ;
        if (i___2 <= 999) {
          goto ldv_40891;
        } else {
        }
      } else {
      }
      write_data(pbpctl_dev, 40);
      if (pbpctl_dev->bp_ext_ver == 0) {
        i___3 = 0;
        goto ldv_40896;
        ldv_40895:
        __const_udelay(42950UL);
        i___3 = i___3 + 1;
        ldv_40896: ;
        if (i___3 <= 999) {
          goto ldv_40895;
        } else {
        }
      } else {
        i___4 = 0;
        goto ldv_40900;
        ldv_40899:
        __const_udelay(90195UL);
        i___4 = i___4 + 1;
        ldv_40900: ;
        if (i___4 <= 999) {
          goto ldv_40899;
        } else {
        }
      }
      if ((pbpctl_dev->bp_caps & 16U) != 0U) {
        write_data(pbpctl_dev, 34);
        i___5 = 0;
        goto ldv_40904;
        ldv_40903:
        __const_udelay(90195UL);
        i___5 = i___5 + 1;
        ldv_40904: ;
        if (i___5 <= 999) {
          goto ldv_40903;
        } else {
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 2097152U) != 0U) {
        write_data(pbpctl_dev, 44);
        i___6 = 0;
        goto ldv_40908;
        ldv_40907:
        __const_udelay(90195UL);
        i___6 = i___6 + 1;
        ldv_40908: ;
        if (i___6 <= 999) {
          goto ldv_40907;
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int std_nic_off(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  int i___0 ;
  int i___1 ;
  int i___2 ;
  int i___3 ;
  int i___4 ;
  int i___5 ;
  int i___6 ;
  {
  if ((pbpctl_dev->bp_caps & 64U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      write_data_int(pbpctl_dev, 5);
      i = 0;
      goto ldv_40915;
      ldv_40914:
      __const_udelay(17180UL);
      i = i + 1;
      ldv_40915: ;
      if (i <= 999) {
        goto ldv_40914;
      } else {
      }
      return (0);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 134);
      i___0 = 0;
      goto ldv_40919;
      ldv_40918:
      __const_udelay(90195UL);
      i___0 = i___0 + 1;
      ldv_40919: ;
      if (i___0 <= 999) {
        goto ldv_40918;
      } else {
      }
      return (0);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver >= 0) {
      if ((pbpctl_dev->bp_caps & 33554432U) != 0U) {
        write_data(pbpctl_dev, 42);
        i___1 = 0;
        goto ldv_40923;
        ldv_40922:
        __const_udelay(90195UL);
        i___1 = i___1 + 1;
        ldv_40923: ;
        if (i___1 <= 999) {
          goto ldv_40922;
        } else {
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 4096U) != 0U) {
        write_data(pbpctl_dev, 38);
        if (pbpctl_dev->bp_ext_ver > 0) {
          i___2 = 0;
          goto ldv_40927;
          ldv_40926:
          __const_udelay(90195UL);
          i___2 = i___2 + 1;
          ldv_40927: ;
          if (i___2 <= 999) {
            goto ldv_40926;
          } else {
          }
        } else {
          i___3 = 0;
          goto ldv_40931;
          ldv_40930:
          __const_udelay(42950UL);
          i___3 = i___3 + 1;
          ldv_40931: ;
          if (i___3 <= 999) {
            goto ldv_40930;
          } else {
          }
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 2097152U) != 0U) {
        write_data(pbpctl_dev, 46);
        i___4 = 0;
        goto ldv_40935;
        ldv_40934:
        __const_udelay(90195UL);
        i___4 = i___4 + 1;
        ldv_40935: ;
        if (i___4 <= 999) {
          goto ldv_40934;
        } else {
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 536870912U) != 0U) {
        write_data(pbpctl_dev, 137);
        i___5 = 0;
        goto ldv_40939;
        ldv_40938:
        __const_udelay(90195UL);
        i___5 = i___5 + 1;
        ldv_40939: ;
        if (i___5 <= 999) {
          goto ldv_40938;
        } else {
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 16U) != 0U) {
        write_data(pbpctl_dev, 36);
        i___6 = 0;
        goto ldv_40943;
        ldv_40942:
        __const_udelay(90195UL);
        i___6 = i___6 + 1;
        ldv_40943: ;
        if (i___6 <= 999) {
          goto ldv_40942;
        } else {
        }
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int wdt_time_left(bpctl_dev_t *pbpctl_dev )
{
  unsigned long curr_time ;
  unsigned long delta_time ;
  unsigned long wdt_on_time ;
  unsigned long delta_time_msec ;
  int time_left ;
  unsigned int tmp ;
  {
  curr_time = jiffies;
  delta_time = 0UL;
  wdt_on_time = pbpctl_dev->bypass_wdt_on_time;
  delta_time_msec = 0UL;
  time_left = 0;
  switch (pbpctl_dev->wdt_status) {
  case 0:
  time_left = 0;
  goto ldv_40954;
  case 1:
  delta_time = curr_time >= wdt_on_time ? curr_time - wdt_on_time : ~ wdt_on_time + curr_time;
  tmp = _kc_jiffies_to_msecs(delta_time);
  delta_time_msec = (unsigned long )tmp;
  time_left = (int )(pbpctl_dev->bypass_timer_interval - (unsigned int )delta_time_msec);
  if (time_left < 0) {
    time_left = -1;
    pbpctl_dev->wdt_status = -2;
  } else {
  }
  goto ldv_40954;
  case -2:
  time_left = -1;
  goto ldv_40954;
  }
  ldv_40954: ;
  return (time_left);
}
}
static int wdt_timer(bpctl_dev_t *pbpctl_dev , int *time_left )
{
  int ret ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    if (pbpctl_dev->wdt_status == -1) {
      ret = -1;
    } else {
      *time_left = wdt_time_left(pbpctl_dev);
    }
  } else {
    ret = -1;
  }
  return (ret);
}
}
static int wdt_timer_reload(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 8192U) != 0U && pbpctl_dev->wdt_status != -1) {
    if (pbpctl_dev->wdt_status == 0) {
      return (0);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver >= 0) {
      ret = wdt_pulse(pbpctl_dev);
    } else
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      ret = wdt_pulse_int(pbpctl_dev);
    } else {
      ret = send_wdt_pulse(pbpctl_dev);
    }
    return (1);
  } else {
  }
  return (-1);
}
}
static void wd_reset_timer(unsigned long param )
{
  bpctl_dev_t *pbpctl_dev ;
  int tmp ;
  {
  pbpctl_dev = (bpctl_dev_t *)param;
  if (pbpctl_dev->bp_ext_ver >= 0) {
    tmp = atomic_read((atomic_t const *)(& pbpctl_dev->wdt_busy));
    if (tmp == 1) {
      mod_timer(& pbpctl_dev->bp_timer, (unsigned long )jiffies + 1UL);
      return;
    } else {
    }
  } else {
  }
  wdt_timer_reload(pbpctl_dev);
  if (pbpctl_dev->reset_time != 0U) {
    mod_timer(& pbpctl_dev->bp_timer, (unsigned long )((pbpctl_dev->reset_time * 250U) / 1000U) + (unsigned long )jiffies);
  } else {
  }
  return;
}
}
int bp_wait_at_pwup_en(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 128);
      i = 0;
      goto ldv_40975;
      ldv_40974:
      __const_udelay(90195UL);
      i = i + 1;
      ldv_40975: ;
      if (i <= 999) {
        goto ldv_40974;
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bp_wait_at_pwup_dis(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 129);
      i = 0;
      goto ldv_40982;
      ldv_40981:
      __const_udelay(90195UL);
      i = i + 1;
      ldv_40982: ;
      if (i <= 999) {
        goto ldv_40981;
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bp_hw_reset_en(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 130);
      i = 0;
      goto ldv_40989;
      ldv_40988:
      __const_udelay(90195UL);
      i = i + 1;
      ldv_40989: ;
      if (i <= 999) {
        goto ldv_40988;
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bp_hw_reset_dis(bpctl_dev_t *pbpctl_dev )
{
  int i ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      write_data(pbpctl_dev, 131);
      i = 0;
      goto ldv_40996;
      ldv_40995:
      __const_udelay(90195UL);
      i = i + 1;
      ldv_40996: ;
      if (i <= 999) {
        goto ldv_40995;
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int wdt_exp_mode(bpctl_dev_t *pbpctl_dev , int mode )
{
  uint32_t status_reg ;
  uint32_t status_reg1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  status_reg = 0U;
  status_reg1 = 0U;
  if ((pbpctl_dev->bp_caps & 268959744U) != 0U && (int )pbpctl_dev->bp_caps & 1) {
    if (pbpctl_dev->bp_ext_ver > 1) {
      if ((pbpctl_dev->bp_ext_ver > 7 && mode == 2) && (pbpctl_dev->bp_caps & 268435456U) != 0U) {
        tmp = read_reg(pbpctl_dev, 13);
        status_reg1 = (uint32_t )tmp;
        if ((status_reg1 & 1U) == 0U) {
          write_reg(pbpctl_dev, (int )((unsigned int )((unsigned char )status_reg1) | 1U),
                    13);
        } else {
        }
        return (0);
      } else {
      }
    } else {
    }
    tmp___0 = read_reg(pbpctl_dev, 6);
    status_reg = (uint32_t )tmp___0;
    if (mode == 0 && (int )pbpctl_dev->bp_caps & 1) {
      if (pbpctl_dev->bp_ext_ver > 7) {
        tmp___1 = read_reg(pbpctl_dev, 13);
        status_reg1 = (uint32_t )tmp___1;
        if ((int )status_reg1 & 1) {
          write_reg(pbpctl_dev, (int )((unsigned char )status_reg1) & 254, 13);
        } else {
        }
      } else {
      }
      if ((int )status_reg & 1) {
        write_reg(pbpctl_dev, (int )((unsigned char )status_reg) & 254, 6);
      } else {
      }
      return (0);
    } else
    if (mode == 1 && (pbpctl_dev->bp_caps & 262144U) != 0U) {
      if ((status_reg & 1U) == 0U) {
        write_reg(pbpctl_dev, (int )((unsigned int )((unsigned char )status_reg) | 1U),
                  6);
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bypass_fw_ver(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = is_bypass_fn(pbpctl_dev);
  if (tmp___0 != 0) {
    tmp = read_reg(pbpctl_dev, 1);
    return (tmp);
  } else {
    return (-1);
  }
}
}
int bypass_sign_check(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = is_bypass_fn(pbpctl_dev);
  if (tmp___0 != 0) {
    tmp = read_reg(pbpctl_dev, 7);
    return (tmp == 205);
  } else {
    return (-1);
  }
}
}
static int tx_status(bpctl_dev_t *pbpctl_dev )
{
  uint32_t ctrl ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  uint16_t mii_reg ;
  s32 tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  ctrl = 0U;
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    ctrl = readl((void const volatile *)pbpctl_dev->mem_map);
    if (pbpctl_dev->bp_i80 != 0) {
      return ((ctrl & 524288U) == 0U);
    } else {
    }
    if (pbpctl_dev->bp_540 != 0) {
      ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
      return ((ctrl & 2U) == 0U);
    } else {
    }
  } else {
  }
  if ((pbpctl_dev->bp_caps & 65536U) != 0U) {
    if ((((((((((((((pbpctl_dev->subdevice == 800U || pbpctl_dev->subdevice == 768U) || pbpctl_dev->subdevice == 808U) || pbpctl_dev->subdevice == 832U) || pbpctl_dev->subdevice == 864U) || pbpctl_dev->subdevice == 784U) || pbpctl_dev->subdevice == 792U) || pbpctl_dev->subdevice == 816U) || pbpctl_dev->subdevice == 1024U) || pbpctl_dev->subdevice == 1056U) || pbpctl_dev->subdevice == 1088U) || pbpctl_dev->subdevice == 83U) || pbpctl_dev->subdevice == 70U) || pbpctl_dev->subdevice == 84U) || pbpctl_dev->subdevice == 82U) {
      tmp___0 = bp75_read_phy_reg(pbpctl_dev, 0U, & mii_reg);
      if (tmp___0 == 0) {
        if (((int )mii_reg & 2048) != 0) {
          return (0);
        } else {
          return (1);
        }
      } else {
      }
      return (-1);
    } else {
    }
    if (pbpctl_dev->bp_10g9 != 0) {
      tmp___1 = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
      return ((tmp___1 & 8U) == 0U);
    } else
    if (pbpctl_dev->bp_fiber5 != 0) {
      ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
      if ((ctrl & 64U) != 0U) {
        return (0);
      } else {
      }
      return (1);
    } else
    if (pbpctl_dev->bp_10gb != 0) {
      ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
      writel((ctrl & 4025479167U) | 268435456U, (void volatile *)(pbpctl_dev->mem_map + 42128UL));
      if ((unsigned int )pbpctl_dev->func == 1U || (unsigned int )pbpctl_dev->func == 3U) {
        tmp___2 = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
        return ((tmp___2 & 16U) == 0U);
      } else {
        tmp___3 = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
        return ((int )tmp___3 & 1 ? 0 : 1);
      }
    } else {
    }
    if (pbpctl_dev->bp_10g == 0) {
      ctrl = readl((void const volatile *)pbpctl_dev->mem_map);
      if (pbpctl_dev->bp_i80 != 0) {
        return ((ctrl & 524288U) == 0U);
      } else {
      }
      if (pbpctl_dev->bp_540 != 0) {
        ctrl = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
        return ((ctrl & 2U) == 0U);
      } else {
      }
      return ((ctrl & 262144U) == 0U);
    } else {
      tmp___4 = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
      return ((int )tmp___4 & 1 ? 0 : 1);
    }
  } else {
  }
  return (-1);
}
}
static int bp_force_link_status(bpctl_dev_t *pbpctl_dev )
{
  unsigned int tmp ;
  {
  if (((pbpctl_dev->subdevice == 385U || pbpctl_dev->subdevice == 386U) || pbpctl_dev->subdevice == 355U) || pbpctl_dev->subdevice == 393U) {
    if (pbpctl_dev->bp_10g != 0 || pbpctl_dev->bp_10g9 != 0) {
      tmp = readl((void const volatile *)(pbpctl_dev->mem_map + 32UL));
      return ((tmp & 512U) != 0U);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bypass_from_last_read(bpctl_dev_t *pbpctl_dev )
{
  uint32_t ctrl_ext ;
  bpctl_dev_t *pbpctl_dev_b ;
  {
  ctrl_ext = 0U;
  pbpctl_dev_b = 0;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_b != (unsigned long )((bpctl_dev_t *)0)) {
      ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 24UL));
      writel(ctrl_ext & 4294965247U, (void volatile *)(pbpctl_dev_b->mem_map + 24UL));
      readl((void const volatile *)(pbpctl_dev_b->mem_map + 8UL));
      ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 24UL));
      if ((ctrl_ext & 128U) != 0U) {
        return (0);
      } else {
      }
      return (1);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
int bypass_status_clear(bpctl_dev_t *pbpctl_dev )
{
  bpctl_dev_t *pbpctl_dev_b ;
  {
  pbpctl_dev_b = 0;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_b != (unsigned long )((bpctl_dev_t *)0)) {
      send_bypass_clear_pulse(pbpctl_dev_b, 1U);
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
int bypass_flag_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((int )pbpctl_dev->bp_caps & 1) {
    if (pbpctl_dev->bp_ext_ver >= 0) {
      tmp = read_reg(pbpctl_dev, 0);
      return ((tmp & 32) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bypass_flag_status_clear(bpctl_dev_t *pbpctl_dev )
{
  uint32_t status_reg ;
  int tmp ;
  {
  if ((int )pbpctl_dev->bp_caps & 1) {
    if (pbpctl_dev->bp_ext_ver >= 0) {
      status_reg = 0U;
      tmp = read_reg(pbpctl_dev, 0);
      status_reg = (uint32_t )tmp;
      write_reg(pbpctl_dev, (int )((unsigned char )status_reg) & 223, 0);
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bypass_change_status(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 4U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      ret = bypass_flag_status(pbpctl_dev);
      bypass_flag_status_clear(pbpctl_dev);
    } else
    if (pbpctl_dev->bp_ext_ver >= 0) {
      ret = bypass_flag_status(pbpctl_dev);
      bypass_flag_status_clear(pbpctl_dev);
    } else {
      ret = bypass_from_last_read(pbpctl_dev);
      bypass_status_clear(pbpctl_dev);
    }
  } else {
  }
  return (ret);
}
}
int bypass_off_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((int )pbpctl_dev->bp_caps & 1) {
    if (pbpctl_dev->bp_ext_ver >= 0) {
      tmp = read_reg(pbpctl_dev, 0);
      return ((tmp & 16) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
static int bypass_status(bpctl_dev_t *pbpctl_dev )
{
  u32 ctrl_ext ;
  bpctl_dev_t *pbpctl_dev_b ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  ctrl_ext = 0U;
  if ((int )pbpctl_dev->bp_caps & 1) {
    pbpctl_dev_b = 0;
    pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
      return (-1);
    } else {
    }
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      if ((unsigned int )pbpctl_dev->bp_status_un == 0U) {
        tmp = readl((void const volatile *)(pbpctl_dev_b->mem_map + 24UL));
        return ((tmp & 128U) != 0U);
      } else {
        return (-1);
      }
    } else {
    }
    if (pbpctl_dev->bp_ext_ver > 7) {
      if (pbpctl_dev->bp_10g9 != 0) {
        ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        writel(ctrl_ext | 2U, (void volatile *)(pbpctl_dev_b->mem_map + 40UL));
        tmp___0 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        return ((int )tmp___0 & 1 ? 0 : 1);
      } else
      if (pbpctl_dev->bp_540 != 0) {
        tmp___1 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 32UL));
        return ((int )tmp___1 & 1 ? 0 : 1);
      } else
      if (pbpctl_dev->bp_fiber5 != 0 || pbpctl_dev->bp_i80 != 0) {
        tmp___2 = readl((void const volatile *)pbpctl_dev_b->mem_map);
        return ((tmp___2 & 262144U) == 0U);
      } else
      if (pbpctl_dev->bp_10gb != 0) {
        ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
        writel((ctrl_ext & 4160223231U) | 134217728U, (void volatile *)(pbpctl_dev->mem_map + 42128UL));
        tmp___3 = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
        return ((tmp___3 & 8U) == 0U);
      } else
      if (pbpctl_dev->bp_10g == 0) {
        tmp___4 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 24UL));
        return ((tmp___4 & 128U) == 0U);
      } else {
        ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        writel(ctrl_ext | 8U, (void volatile *)(pbpctl_dev_b->mem_map + 40UL));
        tmp___5 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        return ((tmp___5 & 4U) == 0U);
      }
    } else
    if ((unsigned int )pbpctl_dev->media_type == 0U) {
      tmp___6 = readl((void const volatile *)pbpctl_dev_b->mem_map);
      return ((tmp___6 & 524288U) != 0U);
    } else {
      tmp___8 = bypass_status_clear(pbpctl_dev);
      if (tmp___8 >= 0) {
        tmp___7 = bypass_from_last_read(pbpctl_dev);
        return (tmp___7);
      } else {
      }
    }
  } else {
  }
  return (-1);
}
}
int default_pwron_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if ((pbpctl_dev->bp_caps & 4096U) != 0U) {
      if (pbpctl_dev->bp_ext_ver >= 0) {
        tmp = read_reg(pbpctl_dev, 0);
        return ((tmp & 8) == 0);
      } else {
      }
    } else {
    }
  } else {
  }
  return (-1);
}
}
static int default_pwroff_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U && (pbpctl_dev->bp_caps & 512U) != 0U) {
    tmp = read_reg(pbpctl_dev, 0);
    return ((tmp & 128) == 0);
  } else {
  }
  return (-1);
}
}
int dis_bypass_cap_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 16U) != 0U) {
    if (pbpctl_dev->bp_ext_ver >= 0) {
      tmp = read_reg(pbpctl_dev, 0);
      return ((tmp & 4) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int cmd_en_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver >= 0) {
      tmp = read_reg(pbpctl_dev, 0);
      return ((tmp & 2) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int wdt_en_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    if (pbpctl_dev->bp_ext_ver >= 0) {
      tmp = read_reg(pbpctl_dev, 0);
      return (tmp & 1);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int wdt_programmed(bpctl_dev_t *pbpctl_dev , int *timeout )
{
  int ret ;
  u8 wdt_val ;
  int tmp ;
  int tmp___0 ;
  int curr_wdt_status ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    if (pbpctl_dev->bp_ext_ver >= 0) {
      tmp___0 = read_reg(pbpctl_dev, 0);
      if (tmp___0 & 1) {
        tmp = read_reg(pbpctl_dev, 4);
        wdt_val = (u8 )tmp;
        *timeout = 100 << (int )wdt_val;
      } else {
        *timeout = 0;
      }
    } else {
      curr_wdt_status = pbpctl_dev->wdt_status;
      if (curr_wdt_status == -1) {
        *timeout = -1;
      } else {
        *timeout = curr_wdt_status != 0 ? (int )pbpctl_dev->bypass_timer_interval : 0;
      }
    }
  } else {
    ret = -1;
  }
  return (ret);
}
}
int bypass_support(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 5);
      ret = tmp & 1;
    } else
    if (pbpctl_dev->bp_ext_ver == 0) {
      ret = 1;
    } else {
      ret = -1;
    }
  } else {
  }
  return (ret);
}
}
int tap_support(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 5);
      ret = (tmp & 2) != 0;
    } else
    if (pbpctl_dev->bp_ext_ver == 0) {
      ret = 0;
    } else {
      ret = -1;
    }
  } else {
  }
  return (ret);
}
}
int normal_support(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int tmp ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 5);
      ret = (tmp & 4) == 0;
    } else {
      ret = 1;
    }
  } else {
  }
  return (ret);
}
}
int get_bp_prod_caps(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U && pbpctl_dev->bp_ext_ver > 0) {
    tmp = read_reg(pbpctl_dev, 5);
    return (tmp);
  } else {
  }
  return (-1);
}
}
int tap_flag_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 524288U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 6);
      return ((tmp & 32) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int tap_flag_status_clear(bpctl_dev_t *pbpctl_dev )
{
  uint32_t status_reg ;
  int tmp ;
  {
  status_reg = 0U;
  if ((pbpctl_dev->bp_caps & 524288U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 6);
      status_reg = (uint32_t )tmp;
      write_reg(pbpctl_dev, (int )((unsigned char )status_reg) & 223, 6);
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int tap_change_status(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = -1;
  if (pbpctl_dev->bp_ext_ver > 0) {
    if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
      if ((int )pbpctl_dev->bp_caps & 1) {
        ret = tap_flag_status(pbpctl_dev);
        tap_flag_status_clear(pbpctl_dev);
      } else {
        ret = bypass_from_last_read(pbpctl_dev);
        bypass_status_clear(pbpctl_dev);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
int tap_off_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 6);
      return ((tmp & 16) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int tap_status(bpctl_dev_t *pbpctl_dev )
{
  u32 ctrl_ext ;
  bpctl_dev_t *pbpctl_dev_b ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ctrl_ext = 0U;
  if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
    pbpctl_dev_b = 0;
    pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
      return (-1);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver > 7) {
      if (pbpctl_dev->bp_10g == 0) {
        tmp = readl((void const volatile *)(pbpctl_dev_b->mem_map + 24UL));
        return ((tmp & 64U) == 0U);
      } else {
        ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        writel(ctrl_ext | 2U, (void volatile *)(pbpctl_dev_b->mem_map + 40UL));
        tmp___0 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        return ((int )tmp___0 & 1 ? 0 : 1);
      }
    } else
    if ((unsigned int )pbpctl_dev->media_type == 0U) {
      tmp___1 = readl((void const volatile *)pbpctl_dev->mem_map);
      return ((tmp___1 & 262144U) != 0U);
    } else {
      tmp___3 = bypass_status_clear(pbpctl_dev);
      if (tmp___3 >= 0) {
        tmp___2 = bypass_from_last_read(pbpctl_dev);
        return (tmp___2);
      } else {
      }
    }
  } else {
  }
  return (-1);
}
}
int default_pwron_tap_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 33554432U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 6);
      return ((tmp & 8) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int dis_tap_cap_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 33554432U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 0) {
      tmp = read_reg(pbpctl_dev, 6);
      return ((tmp & 4) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int disc_flag_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      tmp = read_reg(pbpctl_dev, 13);
      return ((tmp & 32) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int disc_flag_status_clear(bpctl_dev_t *pbpctl_dev )
{
  uint32_t status_reg ;
  int tmp ;
  {
  status_reg = 0U;
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      tmp = read_reg(pbpctl_dev, 13);
      status_reg = (uint32_t )tmp;
      write_reg(pbpctl_dev, (int )((unsigned char )status_reg) & 223, 13);
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int disc_change_status(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = -1;
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U) {
    ret = disc_flag_status(pbpctl_dev);
    disc_flag_status_clear(pbpctl_dev);
    return (ret);
  } else {
  }
  return (-1);
}
}
int disc_off_status(bpctl_dev_t *pbpctl_dev )
{
  bpctl_dev_t *pbpctl_dev_b ;
  u32 ctrl_ext ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  {
  pbpctl_dev_b = 0;
  ctrl_ext = 0U;
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U) {
    pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
      return (-1);
    } else {
    }
    if (pbpctl_dev->subdevice == 62U) {
      tmp = read_reg(pbpctl_dev, 13);
      return ((tmp & 16) != 0);
    } else {
    }
    if (pbpctl_dev->bp_i80 != 0) {
      tmp___0 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 24UL));
      return ((tmp___0 & 64U) != 0U);
    } else {
    }
    if (pbpctl_dev->bp_540 != 0) {
      ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 32UL));
      tmp___1 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 32UL));
      return ((tmp___1 & 4U) != 0U);
    } else {
    }
    if ((unsigned int )pbpctl_dev->media_type == 0U) {
      if (pbpctl_dev->bp_10g == 0) {
        tmp___2 = readl((void const volatile *)pbpctl_dev_b->mem_map);
        return ((tmp___2 & 524288U) != 0U);
      } else {
        tmp___3 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 32UL));
        return ((tmp___3 & 2U) != 0U);
      }
    } else {
      if (pbpctl_dev->bp_10g9 != 0) {
        ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        writel(ctrl_ext | 8U, (void volatile *)(pbpctl_dev_b->mem_map + 40UL));
        tmp___4 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        return ((tmp___4 & 4U) != 0U);
      } else
      if (pbpctl_dev->bp_fiber5 != 0) {
        tmp___5 = readl((void const volatile *)pbpctl_dev_b->mem_map);
        return ((tmp___5 & 524288U) != 0U);
      } else
      if (pbpctl_dev->bp_10gb != 0) {
        ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
        writel((ctrl_ext & 2139062271U) | 2147483648U, (void volatile *)(pbpctl_dev->mem_map + 42128UL));
        tmp___6 = readl((void const volatile *)(pbpctl_dev->mem_map + 42128UL));
        return ((tmp___6 & 128U) != 0U);
      } else {
      }
      if (pbpctl_dev->bp_10g == 0) {
        tmp___7 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 24UL));
        return ((tmp___7 & 64U) != 0U);
      } else {
        ctrl_ext = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        writel(ctrl_ext | 2U, (void volatile *)(pbpctl_dev_b->mem_map + 40UL));
        tmp___8 = readl((void const volatile *)(pbpctl_dev_b->mem_map + 40UL));
        return ((int )tmp___8 & 1);
      }
    }
  } else {
  }
  return (-1);
}
}
static int disc_status(bpctl_dev_t *pbpctl_dev )
{
  int ctrl ;
  {
  ctrl = 0;
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U) {
    ctrl = disc_off_status(pbpctl_dev);
    if (ctrl < 0) {
      return (ctrl);
    } else {
    }
    return (ctrl == 0);
  } else {
  }
  return (-1);
}
}
int default_pwron_disc_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 1073741824U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      tmp = read_reg(pbpctl_dev, 13);
      return ((tmp & 8) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int dis_disc_cap_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 136U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      tmp = read_reg(pbpctl_dev, 13);
      return ((tmp & 4) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int disc_port_status(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ret = -1;
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    tmp___2 = is_bypass_fn(pbpctl_dev);
    if (tmp___2 == 1) {
      tmp___0 = read_reg(pbpctl_dev, 6);
      return ((tmp___0 & 64) != 0);
    } else {
      tmp___1 = read_reg(pbpctl_dev, 6);
      return ((tmp___1 & 128) != 0);
    }
  } else {
  }
  return (ret);
}
}
int default_pwron_disc_port_status(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  int tmp___0 ;
  {
  ret = -1;
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 1) {
    pbpctl_dev_m = pbpctl_dev;
  } else {
    pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  }
  if ((unsigned long )pbpctl_dev_m == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev_m->bp_caps_ex & 2U) != 0U) {
    tmp___0 = is_bypass_fn(pbpctl_dev);
    if (tmp___0 == 1) {
      return (ret);
    } else {
      return (ret);
    }
  } else {
  }
  return (ret);
}
}
int wdt_exp_mode_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  int tmp___0 ;
  {
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    if (pbpctl_dev->bp_ext_ver <= 0) {
      return (0);
    } else
    if (pbpctl_dev->bp_ext_ver == 1) {
      return (1);
    } else
    if (pbpctl_dev->bp_ext_ver > 1) {
      if (pbpctl_dev->bp_ext_ver > 7) {
        tmp = read_reg(pbpctl_dev, 13);
        if (tmp & 1) {
          return (2);
        } else {
        }
      } else {
      }
      tmp___0 = read_reg(pbpctl_dev, 6);
      return (tmp___0 & 1);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int tpl2_flag_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((int )pbpctl_dev->bp_caps_ex & 1) {
    tmp = read_reg(pbpctl_dev, 13);
    return ((tmp & 64) != 0);
  } else {
  }
  return (-1);
}
}
int tpl_hw_status(bpctl_dev_t *pbpctl_dev )
{
  bpctl_dev_t *pbpctl_dev_b ;
  unsigned int tmp ;
  {
  pbpctl_dev_b = 0;
  pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
  if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((((pbpctl_dev->subdevice == 47U || pbpctl_dev->subdevice == 48U) || pbpctl_dev->subdevice == 42U) || pbpctl_dev->subdevice == 67U) || pbpctl_dev->subdevice == 45U) {
    tmp = readl((void const volatile *)pbpctl_dev->mem_map);
    return ((tmp & 262144U) != 0U);
  } else {
  }
  return (-1);
}
}
int bp_wait_at_pwup_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      tmp = read_reg(pbpctl_dev, 12);
      return (tmp & 1);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int bp_hw_reset_status(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_ext_ver > 7) {
      tmp = read_reg(pbpctl_dev, 12);
      return ((tmp & 2) != 0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int std_nic_status(bpctl_dev_t *pbpctl_dev )
{
  int status_val ;
  int tmp ;
  int tmp___0 ;
  {
  status_val = 0;
  if ((pbpctl_dev->bp_caps & 64U) != 0U) {
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      return (-1);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver > 7) {
      tmp = read_reg(pbpctl_dev, 13);
      return ((tmp & 2) != 0);
    } else {
    }
    if (pbpctl_dev->bp_ext_ver >= 0) {
      if ((int )pbpctl_dev->bp_caps & 1) {
        status_val = read_reg(pbpctl_dev, 0);
        if ((status_val & 1) == 0 && (status_val & 28) == 28) {
          status_val = 1;
        } else {
          return (0);
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
        status_val = read_reg(pbpctl_dev, 6);
        if ((status_val & 28) == 28) {
          status_val = 1;
        } else {
          return (0);
        }
      } else {
      }
      if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
        tmp___0 = disc_off_status(pbpctl_dev);
        if (tmp___0 != 0) {
          status_val = 1;
        } else {
          return (0);
        }
      } else {
      }
      return (status_val);
    } else {
    }
  } else {
  }
  return (-1);
}
}
void bypass_caps_init(bpctl_dev_t *pbpctl_dev )
{
  u_int32_t ctrl_ext ;
  bpctl_dev_t *pbpctl_dev_m ;
  int tmp ;
  int cap_reg ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int cap_reg___0 ;
  {
  ctrl_ext = 0U;
  pbpctl_dev_m = 0;
  if (pbpctl_dev->bp_fiber5 != 0 || pbpctl_dev->bp_10g9 != 0) {
    pbpctl_dev->media_type = 1;
  } else
  if (pbpctl_dev->bp_10gb != 0) {
    if (pbpctl_dev->subdevice == 321U) {
      pbpctl_dev->media_type = 2;
    } else {
      pbpctl_dev->media_type = 1;
    }
  } else
  if (pbpctl_dev->bp_540 != 0) {
    pbpctl_dev->media_type = 3;
  } else
  if (pbpctl_dev->bp_10g == 0) {
    ctrl_ext = readl((void const volatile *)(pbpctl_dev->mem_map + 24UL));
    if ((ctrl_ext & 12582912U) == 0U) {
      pbpctl_dev->media_type = 0;
    } else {
      pbpctl_dev->media_type = 1;
    }
  } else
  if (pbpctl_dev->subdevice == 257U) {
    pbpctl_dev->media_type = 2;
  } else {
    pbpctl_dev->media_type = 1;
  }
  tmp___2 = is_bypass_fn(pbpctl_dev);
  if (tmp___2 != 0) {
    pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 128U;
    if ((unsigned int )pbpctl_dev->media_type == 1U) {
      pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 134414336U;
    } else {
    }
    if ((((pbpctl_dev->subdevice == 47U || pbpctl_dev->subdevice == 48U) || pbpctl_dev->subdevice == 42U) || pbpctl_dev->subdevice == 67U) || pbpctl_dev->subdevice == 45U) {
      pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 134217728U;
    } else {
    }
    if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
      pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 60747U;
      pbpctl_dev->bp_ext_ver = -1;
      return;
    } else {
    }
    if ((unsigned int )pbpctl_dev->bp_fw_ver == 255U && (pbpctl_dev->subdevice == 38U || pbpctl_dev->subdevice == 39U)) {
      pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 58383U;
      pbpctl_dev->bp_ext_ver = -1;
      return;
    } else {
      switch ((int )pbpctl_dev->bp_fw_ver) {
      case 160: ;
      case 161:
      pbpctl_dev->bp_ext_ver = (int )pbpctl_dev->bp_fw_ver & 15;
      goto ldv_41173;
      default:
      tmp = bypass_sign_check(pbpctl_dev);
      if (tmp != 1) {
        pbpctl_dev->bp_caps = 0U;
        return;
      } else {
      }
      pbpctl_dev->bp_ext_ver = (int )pbpctl_dev->bp_fw_ver & 15;
      }
      ldv_41173: ;
    }
    if (pbpctl_dev->bp_ext_ver == 0) {
      pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 64639U;
    } else
    if (pbpctl_dev->bp_ext_ver > 0) {
      pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 57352U;
      cap_reg = get_bp_prod_caps(pbpctl_dev);
      if ((cap_reg & 4) != 0) {
        pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 67108864U;
      } else {
        pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 64U;
      }
      tmp___0 = normal_support(pbpctl_dev);
      if (tmp___0 == 1) {
        pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 64U;
      } else {
        pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 67108864U;
      }
      if (cap_reg & 1) {
        pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 7223U;
        if (pbpctl_dev->bp_ext_ver > 5) {
          pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 896U;
        } else {
        }
      } else {
      }
      if ((cap_reg & 2) != 0) {
        pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 66846720U;
      } else {
      }
      if (pbpctl_dev->bp_ext_ver > 7) {
        if ((cap_reg & 8) != 0) {
          pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 1879048192U;
        } else {
        }
        if ((cap_reg & 16) != 0) {
          pbpctl_dev->bp_caps_ex = pbpctl_dev->bp_caps_ex | 1U;
          pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 134217728U;
          pbpctl_dev->bp_tpl_flag = tpl2_flag_status(pbpctl_dev);
        } else {
        }
      } else {
      }
      if (pbpctl_dev->bp_ext_ver > 8) {
        if ((cap_reg & 32) != 0) {
          pbpctl_dev->bp_caps_ex = pbpctl_dev->bp_caps_ex | 2U;
          pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 196608U;
        } else {
        }
      } else {
      }
    } else {
    }
    if (pbpctl_dev->bp_ext_ver >= 0) {
      tmp___1 = read_reg(pbpctl_dev, 0);
      if (tmp___1 & 1) {
        pbpctl_dev->wdt_status = 1;
      } else {
        pbpctl_dev->wdt_status = 0;
      }
    } else {
    }
  } else
  if ((((((((((((((((((((((((((((((((((pbpctl_dev->subdevice == 38U || pbpctl_dev->subdevice == 39U) || pbpctl_dev->subdevice == 57U) || pbpctl_dev->subdevice == 71U) || pbpctl_dev->subdevice == 76U) || pbpctl_dev->subdevice == 72U) || pbpctl_dev->subdevice == 73U) || pbpctl_dev->subdevice == 74U) || pbpctl_dev->subdevice == 64U) || pbpctl_dev->subdevice == 88U) || pbpctl_dev->subdevice == 67U) || pbpctl_dev->subdevice == 62U) || pbpctl_dev->subdevice == 258U) || pbpctl_dev->subdevice == 259U) || pbpctl_dev->subdevice == 58U) || pbpctl_dev->subdevice == 59U) || pbpctl_dev->subdevice == 79U) || pbpctl_dev->subdevice == 81U) || pbpctl_dev->subdevice == 80U) || pbpctl_dev->subdevice == 809U) || pbpctl_dev->subdevice == 810U) || pbpctl_dev->subdevice == 811U) || pbpctl_dev->subdevice == 1296U) || pbpctl_dev->subdevice == 75U) || pbpctl_dev->subdevice == 78U) || pbpctl_dev->subdevice == 352U) || pbpctl_dev->subdevice == 353U) || pbpctl_dev->subdevice == 354U) || pbpctl_dev->subdevice == 1308U) || pbpctl_dev->subdevice == 385U) || pbpctl_dev->subdevice == 386U) || pbpctl_dev->subdevice == 355U) || (((((((((((((((((((((((((((pbpctl_dev->subdevice == 86U || pbpctl_dev->subdevice == 87U) || pbpctl_dev->subdevice == 801U) || pbpctl_dev->subdevice == 802U) || pbpctl_dev->subdevice == 803U) || pbpctl_dev->subdevice == 769U) || pbpctl_dev->subdevice == 770U) || pbpctl_dev->subdevice == 771U) || pbpctl_dev->subdevice == 772U) || pbpctl_dev->subdevice == 777U) || pbpctl_dev->subdevice == 778U) || pbpctl_dev->subdevice == 779U) || pbpctl_dev->subdevice == 808U) || pbpctl_dev->subdevice == 810U) || pbpctl_dev->subdevice == 808U) || pbpctl_dev->subdevice == 1025U) || pbpctl_dev->subdevice == 1026U) || pbpctl_dev->subdevice == 1027U) || pbpctl_dev->subdevice == 1057U) || pbpctl_dev->subdevice == 1058U) || pbpctl_dev->subdevice == 1059U) || pbpctl_dev->subdevice == 1281U) || pbpctl_dev->subdevice == 1282U) || pbpctl_dev->subdevice == 1283U) || pbpctl_dev->subdevice == 1313U) || pbpctl_dev->subdevice == 1314U) || pbpctl_dev->subdevice == 1315U) || pbpctl_dev->subdevice == 811U)) || (((((((((((((((pbpctl_dev->subdevice == 897U || pbpctl_dev->subdevice == 898U) || pbpctl_dev->subdevice == 899U) || pbpctl_dev->subdevice == 899U) || pbpctl_dev->subdevice == 1121U) || pbpctl_dev->subdevice == 1122U) || pbpctl_dev->subdevice == 1123U) || pbpctl_dev->subdevice == 913U) || pbpctl_dev->subdevice == 914U) || pbpctl_dev->subdevice == 915U) || pbpctl_dev->subdevice == 961U) || pbpctl_dev->subdevice == 962U) || pbpctl_dev->subdevice == 963U) || pbpctl_dev->subdevice == 977U) || pbpctl_dev->subdevice == 978U) || pbpctl_dev->subdevice == 979U)) || (((((((((((((((((((((pbpctl_dev->subdevice == 12U || pbpctl_dev->subdevice == 1153U) || pbpctl_dev->subdevice == 1154U) || pbpctl_dev->subdevice == 1155U) || pbpctl_dev->subdevice == 1152U) || pbpctl_dev->subdevice == 1409U) || pbpctl_dev->subdevice == 1410U) || pbpctl_dev->subdevice == 1411U) || pbpctl_dev->subdevice == 1408U) || pbpctl_dev->subdevice == 289U) || pbpctl_dev->subdevice == 290U) || pbpctl_dev->subdevice == 291U) || pbpctl_dev->subdevice == 392U) || pbpctl_dev->subdevice == 392U) || pbpctl_dev->subdevice == 393U) || pbpctl_dev->subdevice == 393U) || pbpctl_dev->subdevice == 396U) || pbpctl_dev->subdevice == 84U) || pbpctl_dev->subdevice == 304U) || pbpctl_dev->subdevice == 306U) || pbpctl_dev->subdevice == 307U) || pbpctl_dev->subdevice == 288U)) {
    pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 196608U;
  } else {
  }
  if ((pbpctl_dev->subdevice & 2560U) == 2560U) {
    pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 196608U;
  } else {
  }
  if ((((((((((((((pbpctl_dev->subdevice == 800U || pbpctl_dev->subdevice == 768U) || pbpctl_dev->subdevice == 808U) || pbpctl_dev->subdevice == 832U) || pbpctl_dev->subdevice == 864U) || pbpctl_dev->subdevice == 784U) || pbpctl_dev->subdevice == 792U) || pbpctl_dev->subdevice == 816U) || pbpctl_dev->subdevice == 1024U) || pbpctl_dev->subdevice == 1056U) || pbpctl_dev->subdevice == 1088U) || pbpctl_dev->subdevice == 83U) || pbpctl_dev->subdevice == 70U) || pbpctl_dev->subdevice == 84U) || pbpctl_dev->subdevice == 82U) {
    pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 196608U;
  } else {
  }
  if (((pbpctl_dev->subdevice == 321U || pbpctl_dev->subdevice == 322U) || pbpctl_dev->subdevice == 323U) || pbpctl_dev->subdevice == 320U) {
    pbpctl_dev->bp_caps = pbpctl_dev->bp_caps & 4294770687U;
  } else {
  }
  pbpctl_dev_m = get_master_port_fn(pbpctl_dev);
  if ((unsigned long )pbpctl_dev_m != (unsigned long )((bpctl_dev_t *)0)) {
    cap_reg___0 = 0;
    if (pbpctl_dev_m->bp_ext_ver > 8) {
      cap_reg___0 = get_bp_prod_caps(pbpctl_dev_m);
      if ((cap_reg___0 & 32) != 0) {
        pbpctl_dev->bp_caps = pbpctl_dev->bp_caps | 196608U;
      } else {
      }
      pbpctl_dev->bp_caps_ex = pbpctl_dev->bp_caps_ex | 2U;
    } else {
    }
  } else {
  }
  return;
}
}
int bypass_off_init(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
    tmp = dis_bypass_cap(pbpctl_dev);
    return (tmp);
  } else {
  }
  wdt_off(pbpctl_dev);
  if ((int )pbpctl_dev->bp_caps & 1) {
    bypass_off(pbpctl_dev);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
    tap_off(pbpctl_dev);
  } else {
  }
  cmnd_off(pbpctl_dev);
  return (0);
}
}
void remove_bypass_wd_auto(bpctl_dev_t *pbpctl_dev )
{
  {
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    del_timer_sync(& pbpctl_dev->bp_timer);
  } else {
  }
  return;
}
}
int init_bypass_wd_auto(bpctl_dev_t *pbpctl_dev )
{
  struct lock_class_key __key ;
  {
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    init_timer_key(& pbpctl_dev->bp_timer, 0U, "(&pbpctl_dev->bp_timer)", & __key);
    pbpctl_dev->bp_timer.function = & wd_reset_timer;
    pbpctl_dev->bp_timer.data = (unsigned long )pbpctl_dev;
    return (1);
  } else {
  }
  return (-1);
}
}
int set_bypass_wd_auto(bpctl_dev_t *pbpctl_dev , unsigned int param )
{
  {
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    if (pbpctl_dev->reset_time != param) {
      if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
        pbpctl_dev->reset_time = 500U > param ? 500U : param;
      } else {
        pbpctl_dev->reset_time = param;
      }
      if (param != 0U) {
        mod_timer(& pbpctl_dev->bp_timer, jiffies);
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int get_bypass_wd_auto(bpctl_dev_t *pbpctl_dev )
{
  {
  if ((pbpctl_dev->bp_caps & 8192U) != 0U) {
    return ((int )pbpctl_dev->reset_time);
  } else {
  }
  return (-1);
}
}
int is_bypass_fn(bpctl_dev_t *pbpctl_dev )
{
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  return ((unsigned int )pbpctl_dev->func == 0U || (unsigned int )pbpctl_dev->func == 2U);
}
}
int set_bypass_fn(bpctl_dev_t *pbpctl_dev , int bypass_mode )
{
  int ret ;
  {
  ret = 0;
  if ((pbpctl_dev->bp_caps & 1U) == 0U) {
    return (-1);
  } else {
  }
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (bypass_mode == 0) {
    ret = bypass_off(pbpctl_dev);
  } else {
    ret = bypass_on(pbpctl_dev);
  }
  cmnd_off(pbpctl_dev);
  return (ret);
}
}
int get_bypass_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  tmp = bypass_status(pbpctl_dev);
  return (tmp);
}
}
int get_bypass_change_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = bypass_change_status(pbpctl_dev);
  return (tmp);
}
}
int set_dis_bypass_fn(bpctl_dev_t *pbpctl_dev , int dis_param )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 16U) == 0U) {
    return (-1);
  } else {
  }
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (dis_param != 0) {
    ret = dis_bypass_cap(pbpctl_dev);
  } else {
    ret = en_bypass_cap(pbpctl_dev);
  }
  cmnd_off(pbpctl_dev);
  return (ret);
}
}
int get_dis_bypass_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = dis_bypass_cap_status(pbpctl_dev);
  return (tmp);
}
}
int set_bypass_pwoff_fn(bpctl_dev_t *pbpctl_dev , int bypass_mode )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 512U) == 0U) {
    return (-1);
  } else {
  }
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (bypass_mode != 0) {
    ret = bypass_state_pwroff(pbpctl_dev);
  } else {
    ret = normal_state_pwroff(pbpctl_dev);
  }
  cmnd_off(pbpctl_dev);
  return (ret);
}
}
int get_bypass_pwoff_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = default_pwroff_status(pbpctl_dev);
  return (tmp);
}
}
int set_bypass_pwup_fn(bpctl_dev_t *pbpctl_dev , int bypass_mode )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 4096U) == 0U) {
    return (-1);
  } else {
  }
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (bypass_mode != 0) {
    ret = bypass_state_pwron(pbpctl_dev);
  } else {
    ret = normal_state_pwron(pbpctl_dev);
  }
  cmnd_off(pbpctl_dev);
  return (ret);
}
}
int get_bypass_pwup_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = default_pwron_status(pbpctl_dev);
  return (tmp);
}
}
int set_bypass_wd_fn(bpctl_dev_t *pbpctl_dev , int timeout )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 8192U) == 0U) {
    return (-1);
  } else {
  }
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (timeout == 0) {
    ret = wdt_off(pbpctl_dev);
  } else {
    wdt_on(pbpctl_dev, (unsigned int )timeout);
    ret = (int )pbpctl_dev->bypass_timer_interval;
  }
  cmnd_off(pbpctl_dev);
  return (ret);
}
}
int get_bypass_wd_fn(bpctl_dev_t *pbpctl_dev , int *timeout )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = wdt_programmed(pbpctl_dev, timeout);
  return (tmp);
}
}
int get_wd_expire_time_fn(bpctl_dev_t *pbpctl_dev , int *time_left )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = wdt_timer(pbpctl_dev, time_left);
  return (tmp);
}
}
int reset_bypass_wd_timer_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = wdt_timer_reload(pbpctl_dev);
  return (tmp);
}
}
int get_wd_set_caps_fn(bpctl_dev_t *pbpctl_dev )
{
  int bp_status ;
  unsigned int step_value ;
  unsigned int bit_cnt ;
  int tmp ;
  {
  bp_status = 0;
  step_value = 16U;
  bit_cnt = 0U;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->subdevice == 4512U || pbpctl_dev->subdevice == 4256U) || pbpctl_dev->subdevice == 4513U) {
    return (-1);
  } else {
  }
  goto ldv_41256;
  ldv_41255:
  bit_cnt = bit_cnt + 1U;
  ldv_41256:
  step_value = step_value >> 1;
  if (step_value != 0U) {
    goto ldv_41255;
  } else {
  }
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp != 0) {
    bp_status = (int )(((bit_cnt & 15U) << 5) | 17U);
  } else {
    return (-1);
  }
  return (bp_status);
}
}
int set_std_nic_fn(bpctl_dev_t *pbpctl_dev , int nic_mode )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 64U) == 0U) {
    return (-1);
  } else {
  }
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (nic_mode != 0) {
    ret = std_nic_on(pbpctl_dev);
  } else {
    ret = std_nic_off(pbpctl_dev);
  }
  cmnd_off(pbpctl_dev);
  return (ret);
}
}
int get_std_nic_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = std_nic_status(pbpctl_dev);
  return (tmp);
}
}
int set_tap_fn(bpctl_dev_t *pbpctl_dev , int tap_mode )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 262144U) != 0U) {
    tmp = cmnd_on(pbpctl_dev);
    if (tmp >= 0) {
      if (tap_mode == 0) {
        tap_off(pbpctl_dev);
      } else {
        tap_on(pbpctl_dev);
      }
      cmnd_off(pbpctl_dev);
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int get_tap_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = tap_status(pbpctl_dev);
  return (tmp);
}
}
int set_tap_pwup_fn(bpctl_dev_t *pbpctl_dev , int tap_mode )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 33554432U) != 0U) {
    tmp = cmnd_on(pbpctl_dev);
    if (tmp >= 0) {
      if (tap_mode != 0) {
        ret = tap_state_pwron(pbpctl_dev);
      } else {
        ret = normal_state_pwron(pbpctl_dev);
      }
      cmnd_off(pbpctl_dev);
    } else {
      ret = -1;
    }
  } else {
    ret = -1;
  }
  return (ret);
}
}
int get_tap_pwup_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = default_pwron_tap_status(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (ret == 0);
}
}
int get_tap_change_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = tap_change_status(pbpctl_dev);
  return (tmp);
}
}
int set_dis_tap_fn(bpctl_dev_t *pbpctl_dev , int dis_param )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 2097152U) != 0U) {
    tmp = cmnd_on(pbpctl_dev);
    if (tmp >= 0) {
      if (dis_param != 0) {
        ret = dis_tap_cap(pbpctl_dev);
      } else {
        ret = en_tap_cap(pbpctl_dev);
      }
      cmnd_off(pbpctl_dev);
      return (ret);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
int get_dis_tap_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = dis_tap_cap_status(pbpctl_dev);
  return (tmp);
}
}
int set_disc_fn(bpctl_dev_t *pbpctl_dev , int disc_mode )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 268435456U) != 0U) {
    tmp = cmnd_on(pbpctl_dev);
    if (tmp >= 0) {
      if (disc_mode == 0) {
        disc_off(pbpctl_dev);
      } else {
        disc_on(pbpctl_dev);
      }
      cmnd_off(pbpctl_dev);
      return (0);
    } else {
    }
  } else {
  }
  return (-1);
}
}
int get_disc_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = disc_status(pbpctl_dev);
  return (ret);
}
}
int set_disc_pwup_fn(bpctl_dev_t *pbpctl_dev , int disc_mode )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 1073741824U) != 0U) {
    tmp = cmnd_on(pbpctl_dev);
    if (tmp >= 0) {
      if (disc_mode != 0) {
        ret = disc_state_pwron(pbpctl_dev);
      } else {
        ret = normal_state_pwron(pbpctl_dev);
      }
      cmnd_off(pbpctl_dev);
    } else {
      ret = -1;
    }
  } else {
    ret = -1;
  }
  return (ret);
}
}
int get_disc_pwup_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = default_pwron_disc_status(pbpctl_dev);
  return (ret != 0 ? (ret < 0 ? -1 : 0) : 1);
}
}
int get_disc_change_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = disc_change_status(pbpctl_dev);
  return (ret);
}
}
int set_dis_disc_fn(bpctl_dev_t *pbpctl_dev , int dis_param )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 536870912U) != 0U) {
    tmp = cmnd_on(pbpctl_dev);
    if (tmp >= 0) {
      if (dis_param != 0) {
        ret = dis_disc_cap(pbpctl_dev);
      } else {
        ret = en_disc_cap(pbpctl_dev);
      }
      cmnd_off(pbpctl_dev);
      return (ret);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
int get_dis_disc_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = dis_disc_cap_status(pbpctl_dev);
  return (ret);
}
}
int set_disc_port_fn(bpctl_dev_t *pbpctl_dev , int disc_mode )
{
  int ret ;
  {
  ret = -1;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if (disc_mode == 0) {
    ret = disc_port_off(pbpctl_dev);
  } else {
    ret = disc_port_on(pbpctl_dev);
  }
  return (ret);
}
}
int get_disc_port_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = disc_port_status(pbpctl_dev);
  return (tmp);
}
}
int set_disc_port_pwup_fn(bpctl_dev_t *pbpctl_dev , int disc_mode )
{
  int ret ;
  {
  ret = -1;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if (disc_mode == 0) {
    ret = normal_port_state_pwron(pbpctl_dev);
  } else {
    ret = disc_port_state_pwron(pbpctl_dev);
  }
  return (ret);
}
}
int get_disc_port_pwup_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = default_pwron_disc_port_status(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (ret == 0);
}
}
int get_wd_exp_mode_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = wdt_exp_mode_status(pbpctl_dev);
  return (tmp);
}
}
int set_wd_exp_mode_fn(bpctl_dev_t *pbpctl_dev , int param )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = wdt_exp_mode(pbpctl_dev, param);
  return (tmp);
}
}
int reset_cont_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int tmp ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = cmnd_on(pbpctl_dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  tmp = reset_cont(pbpctl_dev);
  return (tmp);
}
}
int set_tx_fn(bpctl_dev_t *pbpctl_dev , int tx_state )
{
  bpctl_dev_t *pbpctl_dev_b ;
  int tmp ;
  {
  pbpctl_dev_b = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U && (pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_tpl_flag != 0) {
      return (-1);
    } else {
      pbpctl_dev_b = get_master_port_fn(pbpctl_dev);
      if ((unsigned long )pbpctl_dev_b != (unsigned long )((bpctl_dev_t *)0)) {
        if ((pbpctl_dev_b->bp_caps & 134217728U) != 0U && pbpctl_dev_b->bp_tpl_flag != 0) {
          return (-1);
        } else {
        }
      } else {
      }
    }
  } else {
  }
  tmp = set_tx(pbpctl_dev, tx_state);
  return (tmp);
}
}
int set_bp_force_link_fn(int dev_num , int tx_state )
{
  bpctl_dev_t *bpctl_dev_curr ;
  int tmp ;
  {
  if ((dev_num < 0 || dev_num > device_num) || (unsigned long )(bpctl_dev_arr + (unsigned long )dev_num)->pdev == (unsigned long )((struct pci_dev *)0)) {
    return (-1);
  } else {
  }
  bpctl_dev_curr = bpctl_dev_arr + (unsigned long )dev_num;
  tmp = set_bp_force_link(bpctl_dev_curr, tx_state);
  return (tmp);
}
}
int set_wd_autoreset_fn(bpctl_dev_t *pbpctl_dev , int param )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = set_bypass_wd_auto(pbpctl_dev, (unsigned int )param);
  return (tmp);
}
}
int get_wd_autoreset_fn(bpctl_dev_t *pbpctl_dev )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = get_bypass_wd_auto(pbpctl_dev);
  return (tmp);
}
}
int get_bypass_caps_fn(bpctl_dev_t *pbpctl_dev )
{
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  return ((int )pbpctl_dev->bp_caps);
}
}
int get_bypass_slave_fn(bpctl_dev_t *pbpctl_dev , bpctl_dev_t **pbpctl_dev_out )
{
  int idx_dev ;
  {
  idx_dev = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((unsigned int )pbpctl_dev->func == 0U || (unsigned int )pbpctl_dev->func == 2U) {
    idx_dev = 0;
    goto ldv_41377;
    ldv_41376: ;
    if ((int )(bpctl_dev_arr + (unsigned long )idx_dev)->bus == (int )pbpctl_dev->bus && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->slot == (int )pbpctl_dev->slot) {
      if ((unsigned int )pbpctl_dev->func == 0U && (unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 1U) {
        *pbpctl_dev_out = bpctl_dev_arr + (unsigned long )idx_dev;
        return (1);
      } else {
      }
      if ((unsigned int )pbpctl_dev->func == 2U && (unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 3U) {
        *pbpctl_dev_out = bpctl_dev_arr + (unsigned long )idx_dev;
        return (1);
      } else {
      }
    } else {
    }
    idx_dev = idx_dev + 1;
    ldv_41377: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
      goto ldv_41376;
    } else {
    }
    return (-1);
  } else {
    return (0);
  }
}
}
int is_bypass(bpctl_dev_t *pbpctl_dev )
{
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((unsigned int )pbpctl_dev->func == 0U || (unsigned int )pbpctl_dev->func == 2U) {
    return (1);
  } else {
    return (0);
  }
}
}
int get_tx_fn(bpctl_dev_t *pbpctl_dev )
{
  bpctl_dev_t *pbpctl_dev_b ;
  int tmp ;
  {
  pbpctl_dev_b = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U && (pbpctl_dev->bp_caps & 8U) != 0U) {
    if (pbpctl_dev->bp_tpl_flag != 0) {
      return (-1);
    } else {
      pbpctl_dev_b = get_master_port_fn(pbpctl_dev);
      if ((unsigned long )pbpctl_dev_b != (unsigned long )((bpctl_dev_t *)0)) {
        if ((pbpctl_dev_b->bp_caps & 134217728U) != 0U && pbpctl_dev_b->bp_tpl_flag != 0) {
          return (-1);
        } else {
        }
      } else {
      }
    }
  } else {
  }
  tmp = tx_status(pbpctl_dev);
  return (tmp);
}
}
int get_bp_force_link_fn(int dev_num )
{
  bpctl_dev_t *bpctl_dev_curr ;
  int tmp ;
  {
  if ((dev_num < 0 || dev_num > device_num) || (unsigned long )(bpctl_dev_arr + (unsigned long )dev_num)->pdev == (unsigned long )((struct pci_dev *)0)) {
    return (-1);
  } else {
  }
  bpctl_dev_curr = bpctl_dev_arr + (unsigned long )dev_num;
  tmp = bp_force_link_status(bpctl_dev_curr);
  return (tmp);
}
}
static int get_bypass_link_status(bpctl_dev_t *pbpctl_dev )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((unsigned int )pbpctl_dev->media_type == 1U) {
    tmp = readl((void const volatile *)pbpctl_dev->mem_map);
    return ((int )tmp & 524288);
  } else {
    tmp___0 = readl((void const volatile *)(pbpctl_dev->mem_map + 8UL));
    return ((int )tmp___0 & 2);
  }
}
}
static void bp_tpl_timer_fn(unsigned long param )
{
  bpctl_dev_t *pbpctl_dev ;
  uint32_t link1 ;
  uint32_t link2 ;
  bpctl_dev_t *pbpctl_dev_b ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  pbpctl_dev = (bpctl_dev_t *)param;
  pbpctl_dev_b = 0;
  pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
  if ((unsigned long )pbpctl_dev_b == (unsigned long )((bpctl_dev_t *)0)) {
    return;
  } else {
  }
  if (pbpctl_dev->bp_tpl_flag == 0) {
    set_tx(pbpctl_dev_b, 1);
    set_tx(pbpctl_dev, 1);
    return;
  } else {
  }
  tmp = get_bypass_link_status(pbpctl_dev);
  link1 = (uint32_t )tmp;
  tmp___0 = get_bypass_link_status(pbpctl_dev_b);
  link2 = (uint32_t )tmp___0;
  if (link1 != 0U) {
    tmp___9 = tx_status(pbpctl_dev);
    if (tmp___9 != 0) {
      if (link2 == 0U) {
        tmp___8 = tx_status(pbpctl_dev_b);
        if (tmp___8 != 0) {
          set_tx(pbpctl_dev, 0);
        } else {
          goto _L___1;
        }
      } else {
        _L___1:
        tmp___7 = tx_status(pbpctl_dev_b);
        if (tmp___7 == 0) {
          set_tx(pbpctl_dev_b, 1);
        } else
        if (link1 == 0U) {
          tmp___6 = tx_status(pbpctl_dev);
          if (tmp___6 != 0) {
            if (link2 != 0U) {
              tmp___5 = tx_status(pbpctl_dev_b);
              if (tmp___5 != 0) {
                set_tx(pbpctl_dev_b, 0);
              } else {
                goto _L___0;
              }
            } else
            _L___0:
            if (link1 != 0U) {
              tmp___4 = tx_status(pbpctl_dev);
              if (tmp___4 == 0) {
                if (link2 != 0U) {
                  tmp___3 = tx_status(pbpctl_dev_b);
                  if (tmp___3 != 0) {
                    set_tx(pbpctl_dev, 1);
                  } else {
                    goto _L;
                  }
                } else
                _L:
                if (link1 == 0U) {
                  tmp___2 = tx_status(pbpctl_dev);
                  if (tmp___2 == 0) {
                    if (link2 != 0U) {
                      tmp___1 = tx_status(pbpctl_dev_b);
                      if (tmp___1 != 0) {
                        set_tx(pbpctl_dev, 1);
                      } else {
                      }
                    } else {
                    }
                  } else {
                  }
                } else {
                }
              } else {
              }
            } else {
            }
          } else {
          }
        } else {
        }
      }
    } else {
    }
  } else {
  }
  mod_timer(& pbpctl_dev->bp_tpl_timer, (unsigned long )jiffies + 1000UL);
  return;
}
}
void remove_bypass_tpl_auto(bpctl_dev_t *pbpctl_dev )
{
  bpctl_dev_t *pbpctl_dev_b ;
  {
  pbpctl_dev_b = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return;
  } else {
  }
  pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U) {
    del_timer_sync(& pbpctl_dev->bp_tpl_timer);
    pbpctl_dev->bp_tpl_flag = 0;
    pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
    if ((unsigned long )pbpctl_dev_b != (unsigned long )((bpctl_dev_t *)0)) {
      set_tx(pbpctl_dev_b, 1);
    } else {
    }
    set_tx(pbpctl_dev, 1);
  } else {
  }
  return;
}
}
int init_bypass_tpl_auto(bpctl_dev_t *pbpctl_dev )
{
  struct lock_class_key __key ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U) {
    init_timer_key(& pbpctl_dev->bp_tpl_timer, 0U, "(&pbpctl_dev->bp_tpl_timer)",
                   & __key);
    pbpctl_dev->bp_tpl_timer.function = & bp_tpl_timer_fn;
    pbpctl_dev->bp_tpl_timer.data = (unsigned long )pbpctl_dev;
    return (0);
  } else {
  }
  return (-1);
}
}
int set_bypass_tpl_auto(bpctl_dev_t *pbpctl_dev , unsigned int param )
{
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U) {
    if (param != 0U && pbpctl_dev->bp_tpl_flag == 0) {
      pbpctl_dev->bp_tpl_flag = (int )param;
      mod_timer(& pbpctl_dev->bp_tpl_timer, (unsigned long )jiffies + 1UL);
      return (0);
    } else {
    }
    if (param == 0U && pbpctl_dev->bp_tpl_flag != 0) {
      remove_bypass_tpl_auto(pbpctl_dev);
    } else {
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int get_bypass_tpl_auto(bpctl_dev_t *pbpctl_dev )
{
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U) {
    return (pbpctl_dev->bp_tpl_flag);
  } else {
  }
  return (-1);
}
}
int set_tpl_fn(bpctl_dev_t *pbpctl_dev , int tpl_mode )
{
  bpctl_dev_t *pbpctl_dev_b ;
  {
  pbpctl_dev_b = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U) {
    if (tpl_mode != 0) {
      pbpctl_dev_b = get_status_port_fn(pbpctl_dev);
      if ((unsigned long )pbpctl_dev_b != (unsigned long )((bpctl_dev_t *)0)) {
        set_tx(pbpctl_dev_b, 1);
      } else {
      }
      set_tx(pbpctl_dev, 1);
    } else {
    }
    if (((((pbpctl_dev->subdevice == 47U || pbpctl_dev->subdevice == 48U) || pbpctl_dev->subdevice == 42U) || pbpctl_dev->subdevice == 67U) || pbpctl_dev->subdevice == 45U) || (int )pbpctl_dev->bp_caps_ex & 1) {
      pbpctl_dev->bp_tpl_flag = tpl_mode;
      if (tpl_mode == 0) {
        tpl_hw_off(pbpctl_dev);
      } else {
        tpl_hw_on(pbpctl_dev);
      }
    } else {
      set_bypass_tpl_auto(pbpctl_dev, (unsigned int )tpl_mode);
    }
    return (0);
  } else {
  }
  return (-1);
}
}
int get_tpl_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  int tmp ;
  {
  ret = -1;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 134217728U) != 0U) {
    if ((int )pbpctl_dev->bp_caps_ex & 1) {
      tmp = tpl2_flag_status(pbpctl_dev);
      return (tmp);
    } else {
    }
    ret = pbpctl_dev->bp_tpl_flag;
  } else {
  }
  return (ret);
}
}
int set_bp_wait_at_pwup_fn(bpctl_dev_t *pbpctl_dev , int tap_mode )
{
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    cmnd_on(pbpctl_dev);
    if (tap_mode == 0) {
      bp_wait_at_pwup_dis(pbpctl_dev);
    } else {
      bp_wait_at_pwup_en(pbpctl_dev);
    }
    cmnd_off(pbpctl_dev);
    return (0);
  } else {
  }
  return (-1);
}
}
int get_bp_wait_at_pwup_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = bp_wait_at_pwup_status(pbpctl_dev);
  return (ret);
}
}
int set_bp_hw_reset_fn(bpctl_dev_t *pbpctl_dev , int tap_mode )
{
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  if ((pbpctl_dev->bp_caps & 8U) != 0U) {
    cmnd_on(pbpctl_dev);
    if (tap_mode == 0) {
      bp_hw_reset_dis(pbpctl_dev);
    } else {
      bp_hw_reset_en(pbpctl_dev);
    }
    cmnd_off(pbpctl_dev);
    return (0);
  } else {
  }
  return (-1);
}
}
int get_bp_hw_reset_fn(bpctl_dev_t *pbpctl_dev )
{
  int ret ;
  {
  ret = 0;
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  ret = bp_hw_reset_status(pbpctl_dev);
  return (ret);
}
}
int get_bypass_info_fn(bpctl_dev_t *pbpctl_dev , char *dev_name___0 , char *add_param )
{
  int tmp ;
  {
  if ((unsigned long )pbpctl_dev == (unsigned long )((bpctl_dev_t *)0)) {
    return (-1);
  } else {
  }
  tmp = is_bypass_fn(pbpctl_dev);
  if (tmp == 0) {
    return (-1);
  } else {
  }
  strcpy(dev_name___0, (char const *)pbpctl_dev->name);
  *add_param = (char )pbpctl_dev->bp_fw_ver;
  return (0);
}
}
int get_dev_idx_bsf(int bus , int slot , int func )
{
  int idx_dev ;
  {
  idx_dev = 0;
  idx_dev = 0;
  goto ldv_41452;
  ldv_41451: ;
  if (((int )(bpctl_dev_arr + (unsigned long )idx_dev)->bus == bus && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->slot == slot) && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == func) {
    return (idx_dev);
  } else {
  }
  idx_dev = idx_dev + 1;
  ldv_41452: ;
  if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
    goto ldv_41451;
  } else {
  }
  return (-1);
}
}
static void str_low(char *str )
{
  int i ;
  size_t tmp ;
  {
  i = 0;
  goto ldv_41459;
  ldv_41458: ;
  if ((int )((signed char )*(str + (unsigned long )i)) > 64 && (int )((signed char )*(str + (unsigned long )i)) <= 90) {
    *(str + (unsigned long )i) = (char )((unsigned int )((unsigned char )*(str + (unsigned long )i)) + 32U);
  } else {
  }
  i = i + 1;
  ldv_41459:
  tmp = strlen((char const *)str);
  if ((size_t )i < tmp) {
    goto ldv_41458;
  } else {
  }
  return;
}
}
static unsigned long str_to_hex(char *p )
{
  unsigned long hex ;
  unsigned long length ;
  size_t tmp ;
  unsigned long shift ;
  unsigned char dig ;
  {
  hex = 0UL;
  tmp = strlen((char const *)p);
  length = tmp;
  shift = 0UL;
  dig = 0U;
  str_low(p);
  length = strlen((char const *)p);
  if (length == 0UL) {
    return (0UL);
  } else {
  }
  ldv_41468:
  length = length - 1UL;
  dig = (unsigned char )*(p + length);
  dig = (unsigned int )dig <= 96U ? (unsigned int )dig + 208U : (unsigned int )dig + 169U;
  hex = (unsigned long )((int )dig << (int )shift) | hex;
  shift = shift + 4UL;
  if (length != 0UL) {
    goto ldv_41468;
  } else {
  }
  return (hex);
}
}
static int get_dev_idx(int ifindex )
{
  int idx_dev ;
  {
  idx_dev = 0;
  idx_dev = 0;
  goto ldv_41475;
  ldv_41474: ;
  if ((bpctl_dev_arr + (unsigned long )idx_dev)->ifindex == ifindex) {
    return (idx_dev);
  } else {
  }
  idx_dev = idx_dev + 1;
  ldv_41475: ;
  if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
    goto ldv_41474;
  } else {
  }
  return (-1);
}
}
static bpctl_dev_t *get_dev_idx_p(int ifindex )
{
  int idx_dev ;
  {
  idx_dev = 0;
  idx_dev = 0;
  goto ldv_41482;
  ldv_41481: ;
  if ((bpctl_dev_arr + (unsigned long )idx_dev)->ifindex == ifindex) {
    return (bpctl_dev_arr + (unsigned long )idx_dev);
  } else {
  }
  idx_dev = idx_dev + 1;
  ldv_41482: ;
  if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
    goto ldv_41481;
  } else {
  }
  return (0);
}
}
static void if_scan_init(void)
{
  int idx_dev ;
  struct net_device *dev ;
  int ifindex ;
  struct list_head const *__mptr ;
  struct ethtool_drvinfo drvinfo ;
  char cbuf[32U] ;
  char *buf ;
  char res[10U] ;
  int i ;
  int bus ;
  int slot ;
  int func ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  char *tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  struct list_head const *__mptr___0 ;
  {
  idx_dev = 0;
  __mptr = (struct list_head const *)init_net.dev_base_head.next;
  dev = (struct net_device *)__mptr + 0xffffffffffffffb0UL;
  goto ldv_41516;
  ldv_41515:
  buf = 0;
  i = 0;
  bus = 0;
  slot = 0;
  func = 0;
  ifindex = dev->ifindex;
  memset((void *)(& res), 0, 10UL);
  memset((void *)(& drvinfo), 0, 196UL);
  if ((unsigned long )dev->ethtool_ops != (unsigned long )((struct ethtool_ops const *)0) && (unsigned long )(dev->ethtool_ops)->get_drvinfo != (unsigned long )((void (* )(struct net_device * ,
                                                                                                                                                                                         struct ethtool_drvinfo * ))0)) {
    memset((void *)(& drvinfo), 0, 196UL);
    (*((dev->ethtool_ops)->get_drvinfo))(dev, & drvinfo);
  } else {
    goto ldv_41502;
  }
  tmp = strcmp((char const *)(& drvinfo.bus_info), "N/A");
  if (tmp == 0) {
    goto ldv_41502;
  } else {
  }
  __len = 32UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& cbuf), (void const *)(& drvinfo.bus_info), __len);
  } else {
    __ret = memcpy((void *)(& cbuf), (void const *)(& drvinfo.bus_info),
                             __len);
  }
  buf = (char *)(& cbuf);
  goto ldv_41507;
  ldv_41506: ;
  ldv_41507:
  tmp___0 = buf;
  buf = buf + 1;
  if ((int )((signed char )*tmp___0) != 58) {
    goto ldv_41506;
  } else {
  }
  i = 0;
  goto ldv_41511;
  ldv_41510: ;
  if ((int )((signed char )*buf) == 58) {
    goto ldv_41509;
  } else {
  }
  res[i] = *buf;
  i = i + 1;
  buf = buf + 1;
  ldv_41511: ;
  if (i <= 9) {
    goto ldv_41510;
  } else {
  }
  ldv_41509:
  buf = buf + 1;
  tmp___1 = str_to_hex((char *)(& res));
  bus = (int )tmp___1;
  memset((void *)(& res), 0, 10UL);
  i = 0;
  goto ldv_41514;
  ldv_41513: ;
  if ((int )((signed char )*buf) == 46) {
    goto ldv_41512;
  } else {
  }
  res[i] = *buf;
  i = i + 1;
  buf = buf + 1;
  ldv_41514: ;
  if (i <= 9) {
    goto ldv_41513;
  } else {
  }
  ldv_41512:
  buf = buf + 1;
  tmp___2 = str_to_hex((char *)(& res));
  slot = (int )tmp___2;
  tmp___3 = str_to_hex(buf);
  func = (int )tmp___3;
  idx_dev = get_dev_idx_bsf(bus, slot, func);
  if (idx_dev != -1) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->ifindex = ifindex;
    (bpctl_dev_arr + (unsigned long )idx_dev)->ndev = dev;
  } else {
  }
  ldv_41502:
  __mptr___0 = (struct list_head const *)dev->dev_list.next;
  dev = (struct net_device *)__mptr___0 + 0xffffffffffffffb0UL;
  ldv_41516: ;
  if ((unsigned long )(& dev->dev_list) != (unsigned long )(& init_net.dev_base_head)) {
    goto ldv_41515;
  } else {
  }
  return;
}
}
static long device_ioctl(struct file *file , unsigned int ioctl_num , unsigned long ioctl_param )
{
  struct bpctl_cmd bpctl_cmd ;
  int dev_idx ;
  bpctl_dev_t *pbpctl_dev_out ;
  void *argp ;
  int ret ;
  unsigned long flags ;
  bpctl_dev_t *pbpctl_dev ;
  int tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  dev_idx = 0;
  argp = (void *)ioctl_param;
  ret = 0;
  tmp = down_interruptible(& bpctl_sema);
  if (tmp != 0) {
    return (-512L);
  } else {
  }
  if (ioctl_num == 3227798016U) {
    if_scan_init();
    ret = 0;
    goto bp_exit;
  } else {
  }
  tmp___0 = copy_from_user((void *)(& bpctl_cmd), (void const *)argp, 100UL);
  if (tmp___0 != 0UL) {
    ret = -14;
    goto bp_exit;
  } else {
  }
  if (ioctl_num == 3227798017U) {
    bpctl_cmd.out_param[0] = device_num;
    tmp___1 = copy_to_user(argp, (void const *)(& bpctl_cmd), 100U);
    if (tmp___1 != 0) {
      ret = -14;
      goto bp_exit;
    } else {
    }
    ret = 0;
    goto bp_exit;
  } else {
  }
  flags = arch_local_irq_save();
  trace_hardirqs_off();
  tmp___3 = spin_trylock(& bpvm_lock);
  if (tmp___3 == 0) {
    tmp___2 = arch_irqs_disabled_flags(flags);
    if (tmp___2 != 0) {
      arch_local_irq_restore(flags);
      trace_hardirqs_off();
    } else {
      trace_hardirqs_on();
      arch_local_irq_restore(flags);
    }
    up(& bpctl_sema);
    return (-1L);
  } else {
  }
  if ((bpctl_cmd.in_param[5] != 0 || bpctl_cmd.in_param[6] != 0) || bpctl_cmd.in_param[7] != 0) {
    dev_idx = get_dev_idx_bsf(bpctl_cmd.in_param[5], bpctl_cmd.in_param[6], bpctl_cmd.in_param[7]);
  } else
  if (bpctl_cmd.in_param[1] == 0) {
    dev_idx = bpctl_cmd.in_param[0];
  } else {
    dev_idx = get_dev_idx(bpctl_cmd.in_param[1]);
  }
  if (dev_idx < 0 || dev_idx > device_num) {
    ret = -95;
    spin_unlock_irqrestore(& bpvm_lock, flags);
    goto bp_exit;
  } else {
  }
  bpctl_cmd.out_param[0] = (int )(bpctl_dev_arr + (unsigned long )dev_idx)->bus;
  bpctl_cmd.out_param[1] = (int )(bpctl_dev_arr + (unsigned long )dev_idx)->slot;
  bpctl_cmd.out_param[2] = (int )(bpctl_dev_arr + (unsigned long )dev_idx)->func;
  bpctl_cmd.out_param[3] = (bpctl_dev_arr + (unsigned long )dev_idx)->ifindex;
  if ((bpctl_dev_arr + (unsigned long )dev_idx)->bp_10gb != 0 && (bpctl_dev_arr + (unsigned long )dev_idx)->ifindex == 0) {
    printk("Please load network driver for %s adapter!\n", (bpctl_dev_arr + (unsigned long )dev_idx)->name);
    bpctl_cmd.status = -1;
    ret = 0;
    spin_unlock_irqrestore(& bpvm_lock, flags);
    goto bp_exit;
  } else {
  }
  if ((bpctl_dev_arr + (unsigned long )dev_idx)->bp_10gb != 0 && (unsigned long )(bpctl_dev_arr + (unsigned long )dev_idx)->ndev != (unsigned long )((struct net_device *)0)) {
    if ((((bpctl_dev_arr + (unsigned long )dev_idx)->ndev)->flags & 1U) == 0U) {
      if ((((bpctl_dev_arr + (unsigned long )dev_idx)->ndev)->flags & 1U) == 0U) {
        printk("Please bring up network interfaces for %s adapter!\n", (bpctl_dev_arr + (unsigned long )dev_idx)->name);
        bpctl_cmd.status = -1;
        ret = 0;
        spin_unlock_irqrestore(& bpvm_lock, flags);
        goto bp_exit;
      } else {
      }
    } else {
    }
  } else {
  }
  if ((dev_idx < 0 || dev_idx > device_num) || (unsigned long )(bpctl_dev_arr + (unsigned long )dev_idx)->pdev == (unsigned long )((struct pci_dev *)0)) {
    bpctl_cmd.status = -1;
    goto bpcmd_exit;
  } else {
  }
  pbpctl_dev = bpctl_dev_arr + (unsigned long )dev_idx;
  switch (ioctl_num) {
  case 3227798031U:
  bpctl_cmd.status = set_bypass_pwoff_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798032U:
  bpctl_cmd.status = get_bypass_pwoff_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798033U:
  bpctl_cmd.status = set_bypass_pwup_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798034U:
  bpctl_cmd.status = get_bypass_pwup_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798025U:
  bpctl_cmd.status = set_bypass_wd_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798026U:
  bpctl_cmd.status = get_bypass_wd_fn(pbpctl_dev, (int *)(& bpctl_cmd.data));
  goto ldv_41546;
  case 3227798027U:
  bpctl_cmd.status = get_wd_expire_time_fn(pbpctl_dev, (int *)(& bpctl_cmd.data));
  goto ldv_41546;
  case 3227798028U:
  bpctl_cmd.status = reset_bypass_wd_timer_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798021U:
  bpctl_cmd.status = get_wd_set_caps_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798035U:
  bpctl_cmd.status = set_std_nic_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798036U:
  bpctl_cmd.status = get_std_nic_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798039U:
  bpctl_cmd.status = set_tap_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798040U:
  bpctl_cmd.status = get_tap_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798041U:
  bpctl_cmd.status = get_tap_change_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798042U:
  bpctl_cmd.status = set_dis_tap_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798043U:
  bpctl_cmd.status = get_dis_tap_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798044U:
  bpctl_cmd.status = set_tap_pwup_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798045U:
  bpctl_cmd.status = get_tap_pwup_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798046U:
  bpctl_cmd.status = set_wd_exp_mode_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798047U:
  bpctl_cmd.status = get_wd_exp_mode_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798030U:
  bpctl_cmd.status = get_dis_bypass_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798029U:
  bpctl_cmd.status = set_dis_bypass_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798024U:
  bpctl_cmd.status = get_bypass_change_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798023U:
  bpctl_cmd.status = get_bypass_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798022U:
  bpctl_cmd.status = set_bypass_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798020U:
  bpctl_cmd.status = get_bypass_caps_fn(pbpctl_dev);
  spin_unlock_irqrestore(& bpvm_lock, flags);
  tmp___4 = copy_to_user(argp, (void const *)(& bpctl_cmd), 100U);
  if (tmp___4 != 0) {
    ret = -14;
    goto bp_exit;
  } else {
  }
  goto bp_exit;
  case 3227798019U:
  bpctl_cmd.status = get_bypass_slave_fn(pbpctl_dev, & pbpctl_dev_out);
  if (bpctl_cmd.status == 1) {
    bpctl_cmd.out_param[4] = (int )pbpctl_dev_out->bus;
    bpctl_cmd.out_param[5] = (int )pbpctl_dev_out->slot;
    bpctl_cmd.out_param[6] = (int )pbpctl_dev_out->func;
    bpctl_cmd.out_param[7] = pbpctl_dev_out->ifindex;
  } else {
  }
  goto ldv_41546;
  case 3227798018U:
  bpctl_cmd.status = is_bypass(pbpctl_dev);
  goto ldv_41546;
  case 3227798037U:
  bpctl_cmd.status = set_tx_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798038U:
  bpctl_cmd.status = get_tx_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798048U:
  bpctl_cmd.status = set_wd_autoreset_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798049U:
  bpctl_cmd.status = get_wd_autoreset_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798052U:
  bpctl_cmd.status = set_disc_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798053U:
  bpctl_cmd.status = get_disc_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798054U:
  bpctl_cmd.status = get_disc_change_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798055U:
  bpctl_cmd.status = set_dis_disc_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798056U:
  bpctl_cmd.status = get_dis_disc_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798057U:
  bpctl_cmd.status = set_disc_pwup_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798058U:
  bpctl_cmd.status = get_disc_pwup_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798116U:
  bpctl_cmd.status = get_bypass_info_fn(pbpctl_dev, (char *)(& bpctl_cmd.data), (char *)(& bpctl_cmd.out_param) + 4U);
  goto ldv_41546;
  case 3227798050U:
  bpctl_cmd.status = set_tpl_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798051U:
  bpctl_cmd.status = get_tpl_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798118U:
  bpctl_cmd.status = set_bp_wait_at_pwup_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798117U:
  bpctl_cmd.status = get_bp_wait_at_pwup_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798120U:
  bpctl_cmd.status = set_bp_hw_reset_fn(pbpctl_dev, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798119U:
  bpctl_cmd.status = get_bp_hw_reset_fn(pbpctl_dev);
  goto ldv_41546;
  case 3227798125U:
  bpctl_cmd.status = set_bp_force_link_fn(dev_idx, bpctl_cmd.in_param[2]);
  goto ldv_41546;
  case 3227798126U:
  bpctl_cmd.status = get_bp_force_link_fn(dev_idx);
  goto ldv_41546;
  default:
  ret = -95;
  spin_unlock_irqrestore(& bpvm_lock, flags);
  goto bp_exit;
  }
  ldv_41546: ;
  bpcmd_exit:
  spin_unlock_irqrestore(& bpvm_lock, flags);
  tmp___5 = copy_to_user(argp, (void const *)(& bpctl_cmd), 100U);
  if (tmp___5 != 0) {
    ret = -14;
  } else {
  }
  ret = 0;
  bp_exit:
  up(& bpctl_sema);
  return ((long )ret);
}
}
struct file_operations Fops =
     {& __this_module, 0, 0, 0, 0, 0, 0, 0, & device_ioctl, 0, 0, & device_open, 0,
    & device_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
dev_desc_t dev_desc[154U] =
  { {(char *)"Silicom Bypass PXG2BPFI-SD series adapter"},
        {(char *)"Silicom Bypass PXG2BPFIL-SD series adapter"},
        {(char *)"Silicom Bypass PXG2BPFILX-SD series adapter"},
        {(char *)"Silicom Bypass PXG2BPFILLX-SD series adapter"},
        {(char *)"Silicom Bypass PXG2BPI-SD series adapter"},
        {(char *)"Silicom Bypass PXG2BPIG-SD series adapter"},
        {(char *)"Silicom Bypass PXG2TBFI-SD series adapter"},
        {(char *)"Silicom Bypass PXG4BPI-SD series adapter"},
        {(char *)"Silicom Bypass PXG4BPFI-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPI-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPI-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPIN-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI-LX-SD series adapter"},
        {(char *)"Silicom Bypass PMCX2BPFI-SD series adapter"},
        {(char *)"Silicom Bypass PMCX2BPFI-N series adapter"},
        {(char *)"Intel Bypass PEG2BPII series adapter"},
        {(char *)"Intel Bypass PEG2BPFII series adapter"},
        {(char *)"Silicom Bypass PXG4BPFILX-SD series adapter"},
        {(char *)"Silicom Bypass PMCX2BPI-N series adapter"},
        {(char *)"Silicom Bypass PMCX4BPI-N series adapter"},
        {(char *)"Silicom Bypass PXG2BISC1-SD series adapter"},
        {(char *)"Silicom Bypass PEG2TBFI-SD series adapter"},
        {(char *)"Silicom Bypass PXG2TBI-SD series adapter"},
        {(char *)"Silicom Bypass PXG4BPFID-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPIPT-SD series adapter"},
        {(char *)"Silicom Bypass PXG6BPI-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPIL-SD series adapter"},
        {(char *)"Silicom Bypass PMCX2BPI-N2 series adapter"},
        {(char *)"Silicom Bypass PMCX4BPI-N2 series adapter"},
        {(char *)"Silicom Bypass PMCX2BPI-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPFID-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPFIDLX-SD series adapter"},
        {(char *)"Silicom Bypass PMCX4BPI-SD series adapter"},
        {(char *)"Silicom Bypass MEG2BPFILN-SD series adapter"},
        {(char *)"Silicom Bypass MEG2BPFINX-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPFILX-SD series adapter"},
        {(char *)"Silicom Bypass PE10G2BPISR-SD series adapter"},
        {(char *)"Silicom Bypass PE10G2BPILR-SD series adapter"},
        {(char *)"Silicom Bypass MHIO8AD-SD series adapter"},
        {(char *)"Silicom Bypass PE10G2BPICX4-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPI5-SD series adapter"},
        {(char *)"Silicom Bypass PEG6BPI5-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI5-SD series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI5LX-SD series adapter"},
        {(char *)"Silicom Bypass MEG2BPFILXLN-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPIX1-SD series adapter"},
        {(char *)"Silicom Bypass MEG2BPFILXNX-SD series adapter"},
        {(char *)"Silicom Bypass XE10G2BPIT-SD series adapter"},
        {(char *)"Silicom Bypass XE10G2BPICX4-SD series adapter"},
        {(char *)"Silicom Bypass XE10G2BPISR-SD series adapter"},
        {(char *)"Silicom Bypass XE10G2BPILR-SD series adapter"},
        {(char *)"Intel Bypass PEG2BPFII0 series adapter"},
        {(char *)"Silicom Bypass XE10G2BPIXR series adapter"},
        {(char *)"Silicom Bypass PE10G2DBISR series adapter"},
        {(char *)"Silicom Bypass PEG2BI5SC6 series adapter"},
        {(char *)"Silicom Bypass PEG6BPI5FC series adapter"},
        {(char *)"Silicom Bypass PE10G2BPTCX4 series adapter"},
        {(char *)"Silicom Bypass PE10G2BPTSR series adapter"},
        {(char *)"Silicom Bypass PE10G2BPTLR series adapter"},
        {(char *)"Silicom Bypass PE10G2BPTT series adapter"},
        {(char *)"Silicom Bypass PEG4BPI6 series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI6 series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI6LX series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI6ZX series adapter"},
        {(char *)"Silicom Bypass PEG2BPI6 series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI6 series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI6LX series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI6ZX series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI6FLXM series adapter"},
        {(char *)"Silicom Bypass PEG4BPI6FC series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI6FC series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI6FCLX series adapter"},
        {(char *)"Silicom Bypass PEG4BPFI6FCZX series adapter"},
        {(char *)"Silicom Bypass PEG6BPI6 series adapter"},
        {(char *)"Silicom Bypass PEG2BPI6SC6 series adapter"},
        {(char *)"Silicom Bypass MEG2BPI6 series adapter"},
        {(char *)"Silicom Bypass XEG2BPI6 series adapter"},
        {(char *)"Silicom Bypass MEG4BPI6 series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI5-SD series adapter"},
        {(char *)"Silicom Bypass PEG2BPFI5LX-SD series adapter"},
        {(char *)"Silicom Bypass PXEG4BPFI-SD series adapter"},
        {(char *)"Silicom Bypass MxEG2BPI6 series adapter"},
        {(char *)"Silicom Bypass MxEG2BPFI6 series adapter"},
        {(char *)"Silicom Bypass MxEG2BPFI6LX series adapter"},
        {(char *)"Silicom Bypass MxEG2BPFI6ZX series adapter"},
        {(char *)"Silicom Bypass MxEG4BPI6 series adapter"},
        {(char *)"Silicom Bypass MxEG4BPFI6 series adapter"},
        {(char *)"Silicom Bypass MxEG4BPFI6LX series adapter"},
        {(char *)"Silicom Bypass MxEG4BPFI6ZX series adapter"},
        {(char *)"Silicom Bypass MxEG6BPI6 series adapter"},
        {(char *)"Silicom Bypass MxE2G4BPi80 series adapter"},
        {(char *)"Silicom Bypass MxE2G4BPFi80 series adapter"},
        {(char *)"Silicom Bypass MxE2G4BPFi80LX series adapter"},
        {(char *)"Silicom Bypass MxE2G4BPFi80ZX series adapter"},
        {(char *)"Silicom Bypass PE210G2SPI9 series adapter"},
        {(char *)"Silicom Bypass MxE210G2BPI9CX4 series adapter"},
        {(char *)"Silicom Bypass MxE210G2BPI9SR series adapter"},
        {(char *)"Silicom Bypass MxE210G2BPI9LR series adapter"},
        {(char *)"Silicom Bypass MxE210G2BPI9T series adapter"},
        {(char *)"Silicom Bypass PE210G2BPI9CX4 series adapter"},
        {(char *)"Silicom Bypass PE210G2BPI9SR series adapter"},
        {(char *)"Silicom Bypass PE210G2BPI9LR series adapter"},
        {(char *)"Silicom Bypass PE210G2BPI9T series adapter"},
        {(char *)"Silicom Bypass M2EG2BPFI6 series adapter"},
        {(char *)"Silicom Bypass M2EG2BPFI6LX series adapter"},
        {(char *)"Silicom Bypass M2EG2BPFI6ZX series adapter"},
        {(char *)"Silicom Bypass M2EG4BPI6 series adapter"},
        {(char *)"Silicom Bypass M2EG4BPFI6 series adapter"},
        {(char *)"Silicom Bypass M2EG4BPFI6LX series adapter"},
        {(char *)"Silicom Bypass M2EG4BPFI6ZX series adapter"},
        {(char *)"Silicom Bypass M2EG6BPI6 series adapter"},
        {(char *)"Silicom Bypass PEG2DBI6    series adapter"},
        {(char *)"Silicom Bypass PEG2DBFI6   series adapter"},
        {(char *)"Silicom Bypass PEG2DBFI6LX series adapter"},
        {(char *)"Silicom Bypass PEG2DBFI6ZX series adapter"},
        {(char *)"Silicom Bypass PE2G4BPi80 series adapter"},
        {(char *)"Silicom Bypass PE2G4BPFi80 series adapter"},
        {(char *)"Silicom Bypass PE2G4BPFi80LX series adapter"},
        {(char *)"Silicom Bypass PE2G4BPFi80ZX series adapter"},
        {(char *)"Silicom Bypass PE2G4BPi80L series adapter"},
        {(char *)"Silicom Bypass MxE2G8BPi80A series adapter"},
        {(char *)"Silicom Bypass PE2G2BPi35 series adapter"},
        {(char *)"Silicom Bypass PAC1200BPi35 series adapter"},
        {(char *)"Silicom Bypass PE2G2BPFi35 series adapter"},
        {(char *)"Silicom Bypass PE2G2BPFi35LX series adapter"},
        {(char *)"Silicom Bypass PE2G2BPFi35ZX series adapter"},
        {(char *)"Silicom Bypass PE2G4BPi35 series adapter"},
        {(char *)"Silicom Bypass PE2G4BPi35L series adapter"},
        {(char *)"Silicom Bypass PE2G4BPFi35 series adapter"},
        {(char *)"Silicom Bypass PE2G4BPFi35LX series adapter"},
        {(char *)"Silicom Bypass PE2G4BPFi35ZX series adapter"},
        {(char *)"Silicom Bypass PE2G6BPi35 series adapter"},
        {(char *)"Silicom Bypass PE2G6BPi35CX series adapter"},
        {(char *)"Silicom Bypass PE2G2BPi80 series adapter"},
        {(char *)"Silicom Bypass PE2G2BPFi80 series adapter"},
        {(char *)"Silicom Bypass PE2G2BPFi80LX series adapter"},
        {(char *)"Silicom Bypass PE2G2BPFi80ZX series adapter"},
        {(char *)"Silicom Bypass M2E10G2BPI9CX4 series adapter"},
        {(char *)"Silicom Bypass M2E10G2BPI9SR series adapter"},
        {(char *)"Silicom Bypass M2E10G2BPI9LR series adapter"},
        {(char *)"Silicom Bypass M2E10G2BPI9T series adapter"},
        {(char *)"Silicom Bypass MxE2G8BPi80 series adapter"},
        {(char *)"Silicom Bypass PE210G2DBi9SR series adapter"},
        {(char *)"Silicom Bypass PE210G2DBi9SRRB series adapter"},
        {(char *)"Silicom Bypass PE210G2DBi9LR series adapter"},
        {(char *)"Silicom Bypass PE210G2DBi9LRRB series adapter"},
        {(char *)"Silicom Bypass PE310G4DBi9-SR series adapter"},
        {(char *)"Silicom Bypass PE310G4BPi9T series adapter"},
        {(char *)"Silicom Bypass PE310G4BPi9SR series adapter"},
        {(char *)"Silicom Bypass PE310G4BPi9LR series adapter"},
        {(char *)"Silicom Bypass PE210G2BPi40T series adapter"},
        {0}};
static bpmod_info_t tx_ctl_pci_tbl[185U] =
  { {32902U, 4218U, 4980U, 38U, 0U, (char *)"PXG2BPFI-SD"},
        {32902U, 4218U, 4980U, 47U, 1U, (char *)"PXG2BPFIL-SD"},
        {32902U, 4218U, 4980U, 39U, 2U, (char *)"PXG2BPFILX-SD"},
        {32902U, 4218U, 4980U, 48U, 3U, (char *)"PXG2BPFILLXSD"},
        {32902U, 4112U, 4980U, 40U, 4U, (char *)"PXG2BPI-SD"},
        {32902U, 4217U, 4980U, 41U, 5U, (char *)"PXG2BPIG-SD"},
        {32902U, 4218U, 4980U, 42U, 6U, (char *)"PXG2TBFI-SD"},
        {32902U, 4217U, 4980U, 44U, 7U, (char *)"PXG4BPI-SD"},
        {32902U, 4218U, 4980U, 45U, 8U, (char *)"PXG4BPFI-SD"},
        {32902U, 4218U, 4980U, 46U, 18U, (char *)"PXG4BPFILX-SD"},
        {32902U, 4217U, 4980U, 49U, 9U, (char *)"PEXG4BPI-SD"},
        {32902U, 4190U, 4980U, 55U, 10U, (char *)"PEG2BPI-SD"},
        {32902U, 4190U, 4980U, 56U, 11U, (char *)"PEG4BPI-SD"},
        {32902U, 4191U, 4980U, 57U, 12U, (char *)"PEG2BPFI-SD"},
        {32902U, 4191U, 4980U, 58U, 13U, (char *)"PEG2BPFILX-SD"},
        {32902U, 4218U, 4980U, 59U, 14U, (char *)"PMCX2BPFI-SD"},
        {32902U, 4218U, 5048U, 1296U, 15U, (char *)"PMCX2BPFI-N"},
        {32902U, 4256U, 32902U, 4512U, 16U, (char *)"PEG4BPII"},
        {32902U, 4190U, 32902U, 4256U, 53U, (char *)"PEG4BPII0"},
        {32902U, 4257U, 32902U, 4513U, 17U, (char *)"PEG4BPFII"},
        {32902U, 4217U, 5048U, 1299U, 19U, (char *)"PMCX2BPI-N"},
        {32902U, 4217U, 5048U, 1300U, 20U, (char *)"PMCX4BPI-N"},
        {32902U, 4217U, 4980U, 61U, 21U, (char *)"PXG2BISC1-SD"},
        {32902U, 4191U, 4980U, 62U, 22U, (char *)"PEG2TBFI-SD"},
        {32902U, 4217U, 4980U, 63U, 23U, (char *)"PXG2TBI-SD"},
        {32902U, 4218U, 4980U, 67U, 24U, (char *)"PXG4BPFID-SD"},
        {32902U, 4191U, 4980U, 64U, 25U, (char *)"PEG4BPFI-SD"},
        {32902U, 4190U, 4980U, 68U, 26U, (char *)"PEG4BPIPT-SD"},
        {32902U, 4217U, 4980U, 69U, 27U, (char *)"PXG6BPI-SD"},
        {32902U, 4263U, 4980U, 70U, 28U, (char *)"PEG4BPIL-SD"},
        {32902U, 4217U, 5048U, 1301U, 29U, (char *)"PMCX2BPI-N2"},
        {32902U, 4217U, 5048U, 1302U, 30U, (char *)"PMCX4BPI-N2"},
        {32902U, 4217U, 4980U, 65U, 31U, (char *)"PMCX2BPI-SD"},
        {32902U, 4217U, 4980U, 66U, 34U, (char *)"PMCX4BPI-SD"},
        {32902U, 4191U, 4980U, 71U, 32U, (char *)"PEG2BPFID-SD"},
        {32902U, 4191U, 4980U, 76U, 33U, (char *)"PEG2BPFIDLXSD"},
        {32902U, 4191U, 4980U, 72U, 35U, (char *)"MEG2BPFILN-SD"},
        {32902U, 4191U, 4980U, 73U, 36U, (char *)"MEG2BPFINX-SD"},
        {32902U, 4191U, 4980U, 74U, 37U, (char *)"PEG4BPFILX-SD"},
        {32902U, 4294967295U, 4980U, 258U, 38U, (char *)"PE10G2BPISR"},
        {32902U, 4294967295U, 4980U, 259U, 39U, (char *)"PE10G2BPILR"},
        {32902U, 4265U, 4980U, 79U, 40U, (char *)"MHIO8AD-SD"},
        {32902U, 4294967295U, 4980U, 257U, 38U, (char *)"PE10G2BPICX4"},
        {32902U, 4263U, 4980U, 82U, 42U, (char *)"PEG2BPI5-SD"},
        {32902U, 4263U, 4980U, 83U, 43U, (char *)"PEG6BPI5"},
        {32902U, 4265U, 4980U, 80U, 44U, (char *)"PEG4BPFI5"},
        {32902U, 4265U, 4980U, 81U, 45U, (char *)"PEG4BPFI5LX"},
        {32902U, 4191U, 4980U, 75U, 46U, (char *)"MEG2BPFILXLN"},
        {32902U, 4190U, 4980U, 77U, 47U, (char *)"PEG2BPIX1-SD"},
        {32902U, 4191U, 4980U, 78U, 48U, (char *)"MEG2BPFILXNX"},
        {32902U, 4294967295U, 4980U, 352U, 49U, (char *)"XE10G2BPIT"},
        {32902U, 4294967295U, 4980U, 353U, 50U, (char *)"XE10G2BPICX4"},
        {32902U, 4294U, 4980U, 354U, 51U, (char *)"XE10G2BPISR"},
        {32902U, 4294U, 4980U, 355U, 52U, (char *)"XE10G2BPILR"},
        {32902U, 4294U, 5048U, 1308U, 54U, (char *)"XE10G2BPIXR"},
        {32902U, 4294U, 4980U, 385U, 55U, (char *)"PE10G2DBISR"},
        {32902U, 4294U, 4980U, 386U, 56U, (char *)"PE10G2DBILR"},
        {32902U, 4263U, 4980U, 84U, 57U, (char *)"PEG2BI5SC6"},
        {32902U, 4263U, 4980U, 85U, 58U, (char *)"PEG6BPI5FC"},
        {5348U, 5710U, 4980U, 321U, 59U, (char *)"PE10G2BPTCX4"},
        {5348U, 5710U, 4980U, 322U, 60U, (char *)"PE10G2BPTSR"},
        {5348U, 5710U, 4980U, 323U, 61U, (char *)"PE10G2BPTLR"},
        {5348U, 5710U, 4980U, 320U, 62U, (char *)"PE10G2BPTT"},
        {32902U, 4297U, 4980U, 800U, 63U, (char *)"PEG4BPI6"},
        {32902U, 4326U, 4980U, 801U, 64U, (char *)"PEG4BPFI6"},
        {32902U, 4326U, 4980U, 802U, 65U, (char *)"PEG4BPFI6LX"},
        {32902U, 4326U, 4980U, 803U, 66U, (char *)"PEG4BPFI6ZX"},
        {32902U, 4297U, 4980U, 768U, 67U, (char *)"PEG2BPI6"},
        {32902U, 4326U, 4980U, 769U, 68U, (char *)"PEG2BPFI6"},
        {32902U, 4326U, 4980U, 770U, 69U, (char *)"PEG2BPFI6LX"},
        {32902U, 4326U, 4980U, 771U, 70U, (char *)"PEG2BPFI6ZX"},
        {32902U, 4327U, 4980U, 772U, 71U, (char *)"PEG2BPFI6FLXM"},
        {32902U, 4297U, 4980U, 808U, 72U, (char *)"PEG4BPI6FC"},
        {32902U, 4326U, 4980U, 809U, 73U, (char *)"PEG4BPFI6FC"},
        {32902U, 4326U, 4980U, 810U, 74U, (char *)"PEG4BPFI6FCLX"},
        {32902U, 4326U, 4980U, 811U, 75U, (char *)"PEG4BPFI6FCZX"},
        {32902U, 4297U, 4980U, 832U, 76U, (char *)"PEG6BPI6"},
        {32902U, 4297U, 4980U, 864U, 77U, (char *)"PEG6BPI62SC6"},
        {32902U, 4297U, 4980U, 784U, 78U, (char *)"MEG2BPI6"},
        {32902U, 4297U, 4980U, 792U, 79U, (char *)"XEG2BPI6"},
        {32902U, 4297U, 4980U, 816U, 80U, (char *)"MEG4BPI6"},
        {32902U, 4265U, 4980U, 86U, 81U, (char *)"PEG2BPFI5"},
        {32902U, 4265U, 4980U, 87U, 82U, (char *)"PEG2BPFI5LX"},
        {32902U, 4191U, 4980U, 88U, 83U, (char *)"PXEG4BPFI-SD"},
        {32902U, 4294967295U, 4980U, 1024U, 84U, (char *)"MxEG2BPI6"},
        {32902U, 4294967295U, 4980U, 1025U, 85U, (char *)"MxEG2BPFI6"},
        {32902U, 4294967295U, 4980U, 1026U, 86U, (char *)"MxEG2BPFI6LX"},
        {32902U, 4294967295U, 4980U, 1027U, 87U, (char *)"MxEG2BPFI6ZX"},
        {32902U, 4294967295U, 4980U, 1056U, 88U, (char *)"MxEG4BPI6"},
        {32902U, 4294967295U, 4980U, 1057U, 89U, (char *)"MxEG4BPFI6"},
        {32902U, 4294967295U, 4980U, 1058U, 90U, (char *)"MxEG4BPFI6LX"},
        {32902U, 4294967295U, 4980U, 1059U, 91U, (char *)"MxEG4BPFI6ZX"},
        {32902U, 4294967295U, 4980U, 1088U, 92U, (char *)"MxEG6BPI6"},
        {32902U, 4294967295U, 4980U, 1120U, 93U, (char *)"MxE2G4BPi80"},
        {32902U, 4294967295U, 4980U, 1121U, 94U, (char *)"MxE2G4BPFi80"},
        {32902U, 4294967295U, 4980U, 1122U, 95U, (char *)"MxE2G4BPFi80LX"},
        {32902U, 4294967295U, 4980U, 1123U, 96U, (char *)"MxE2G4BPFi80ZX"},
        {32902U, 4294967295U, 4980U, 1281U, 106U, (char *)"M2EG2BPFI6"},
        {32902U, 4294967295U, 4980U, 1282U, 107U, (char *)"M2EG2BPFI6LX"},
        {32902U, 4294967295U, 4980U, 1283U, 108U, (char *)"M2EG2BPFI6ZX"},
        {32902U, 4294967295U, 4980U, 1312U, 109U, (char *)"M2EG4BPI6"},
        {32902U, 4294967295U, 4980U, 1313U, 110U, (char *)"M2EG4BPFI6"},
        {32902U, 4294967295U, 4980U, 1314U, 111U, (char *)"M2EG4BPFI6LX"},
        {32902U, 4294967295U, 4980U, 1315U, 112U, (char *)"M2EG4BPFI6ZX"},
        {32902U, 4294967295U, 4980U, 1344U, 113U, (char *)"M2EG6BPI6"},
        {32902U, 4297U, 4980U, 776U, 114U, (char *)"PEG2DBI6"},
        {32902U, 4326U, 4980U, 777U, 115U, (char *)"PEG2DBFI6"},
        {32902U, 4326U, 4980U, 778U, 116U, (char *)"PEG2DBFI6LX"},
        {32902U, 4326U, 4980U, 779U, 117U, (char *)"PEG2DBFI6ZX"},
        {32902U, 4345U, 4980U, 392U, 145U, (char *)"PE210G2DBi9SR"},
        {32902U, 4345U, 4980U, 393U, 147U, (char *)"PE210G2DBi9LR"},
        {32902U, 4345U, 4980U, 396U, 149U, (char *)"PE310G4DBi9SR"},
        {32902U, 4347U, 4980U, 304U, 150U, (char *)"PE310G4BPi9T"},
        {32902U, 4347U, 4980U, 306U, 151U, (char *)"PE310G4BPi9SR"},
        {32902U, 4347U, 4980U, 307U, 152U, (char *)"PE310G4BPi9LR"},
        {32902U, 4294967295U, 4980U, 904U, 118U, (char *)"PE2G4BPi80"},
        {32902U, 4294967295U, 4980U, 897U, 119U, (char *)"PE2G4BPFi80"},
        {32902U, 4294967295U, 4980U, 898U, 120U, (char *)"PE2G4BPFi80LX"},
        {32902U, 4294967295U, 4980U, 899U, 121U, (char *)"PE2G4BPFi80ZX"},
        {32902U, 4294967295U, 4980U, 896U, 122U, (char *)"PE2G4BPi80L"},
        {32902U, 4294967295U, 4980U, 1140U, 123U, (char *)"MxE2G8BPi80A"},
        {32902U, 4294967295U, 4980U, 960U, 124U, (char *)"PE2G2BPi35"},
        {32902U, 4294967295U, 4980U, 972U, 125U, (char *)"PAC1200BPi35"},
        {32902U, 4294967295U, 4980U, 961U, 126U, (char *)"PE2G2BPFi35"},
        {32902U, 4294967295U, 4980U, 962U, 127U, (char *)"PE2G2BPFi35LX"},
        {32902U, 4294967295U, 4980U, 963U, 128U, (char *)"PE2G2BPFi35ZX"},
        {32902U, 4294967295U, 4980U, 984U, 129U, (char *)"PE2G4BPi35"},
        {32902U, 4294967295U, 4980U, 976U, 130U, (char *)"PE2G4BPi35L"},
        {32902U, 4294967295U, 4980U, 977U, 131U, (char *)"PE2G4BPFi35"},
        {32902U, 4294967295U, 4980U, 978U, 132U, (char *)"PE2G4BPFi35LX"},
        {32902U, 4294967295U, 4980U, 979U, 133U, (char *)"PE2G4BPFi35ZX"},
        {32902U, 4294967295U, 4980U, 992U, 134U, (char *)"PE2G6BPi35"},
        {32902U, 4294967295U, 4980U, 2720U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2721U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2722U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2723U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2724U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2725U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2726U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2727U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2728U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2729U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2730U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2731U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2732U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2733U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2734U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2735U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2736U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2737U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2738U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2739U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2740U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2741U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2742U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2743U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2744U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2745U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2746U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2747U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2748U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2749U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2750U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 2751U, 135U, (char *)"PE2G6BPi35CX"},
        {32902U, 4294967295U, 4980U, 912U, 136U, (char *)"PE2G2BPi80"},
        {32902U, 4294967295U, 4980U, 913U, 137U, (char *)"PE2G2BPFi80"},
        {32902U, 4294967295U, 4980U, 914U, 138U, (char *)"PE2G2BPFi80LX"},
        {32902U, 4294967295U, 4980U, 915U, 139U, (char *)"PE2G2BPFi80ZX"},
        {32902U, 4297U, 4980U, 784U, 78U, (char *)"MEG2BPI6"},
        {32902U, 4297U, 4980U, 792U, 79U, (char *)"XEG2BPI6"},
        {32902U, 4347U, 4980U, 1153U, 98U, (char *)"MxE210G2BPI9CX4"},
        {32902U, 4347U, 4980U, 1154U, 99U, (char *)"MxE210G2BPI9SR"},
        {32902U, 4347U, 4980U, 1155U, 100U, (char *)"MxE210G2BPI9LR"},
        {32902U, 4347U, 4980U, 1152U, 101U, (char *)"MxE210G2BPI9T"},
        {32902U, 4347U, 4980U, 1409U, 140U, (char *)"M2E10G2BPI9CX4"},
        {32902U, 4347U, 4980U, 1410U, 141U, (char *)"M2E10G2BPI9SR"},
        {32902U, 4347U, 4980U, 1411U, 142U, (char *)"M2E10G2BPI9LR"},
        {32902U, 4347U, 4980U, 1408U, 143U, (char *)"M2E10G2BPI9T"},
        {32902U, 4347U, 4980U, 289U, 102U, (char *)"PE210G2BPI9CX4"},
        {32902U, 4347U, 4980U, 290U, 103U, (char *)"PE210G2BPI9SR"},
        {32902U, 4347U, 4980U, 291U, 104U, (char *)"PE210G2BPI9LR"},
        {32902U, 4347U, 4980U, 288U, 105U, (char *)"PE210G2BPI9T"},
        {32902U, 4294967295U, 4980U, 1136U, 144U, (char *)"MxE2G8BPi80"},
        {32902U, 5416U, 4980U, 416U, 153U, (char *)"PE210G2BPi40T"},
        {0U, 0U, 0U, 0U, 0U, 0}};
static int bypass_init_module(void)
{
  int ret_val ;
  int idx ;
  int idx_dev ;
  struct pci_dev *pdev1 ;
  unsigned long mmio_start ;
  unsigned long mmio_len ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  int cnt ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct lock_class_key __key___0 ;
  bpctl_dev_t *pbpctl_dev_c ;
  int tmp___6 ;
  int tmp___7 ;
  {
  idx_dev = 0;
  pdev1 = 0;
  printk("Silicom Bypass-SD Control driver v9.0.4\n");
  ret_val = register_chrdev((unsigned int )major_num, "bpctl", (struct file_operations const *)(& Fops));
  if (ret_val < 0) {
    printk("%s failed with %d\n", (char *)"bpctl", ret_val);
    return (ret_val);
  } else {
  }
  major_num = ret_val;
  idx = 0;
  goto ldv_41778;
  ldv_41777: ;
  goto ldv_41775;
  ldv_41774:
  device_num = device_num + 1;
  ldv_41775:
  pdev1 = pci_get_subsys(tx_ctl_pci_tbl[idx].vendor, tx_ctl_pci_tbl[idx].device, tx_ctl_pci_tbl[idx].subvendor,
                         tx_ctl_pci_tbl[idx].subdevice, pdev1);
  if ((unsigned long )pdev1 != (unsigned long )((struct pci_dev *)0)) {
    goto ldv_41774;
  } else {
  }
  idx = idx + 1;
  ldv_41778: ;
  if (tx_ctl_pci_tbl[idx].vendor != 0U) {
    goto ldv_41777;
  } else {
  }
  if (device_num == 0) {
    printk("No such device\n");
    unregister_chrdev((unsigned int )major_num, "bpctl");
    return (-1);
  } else {
  }
  tmp = kmalloc((unsigned long )device_num * 1744UL, 208U);
  bpctl_dev_arr = (bpctl_dev_t *)tmp;
  if ((unsigned long )bpctl_dev_arr == (unsigned long )((bpctl_dev_t *)0)) {
    printk("Allocation error\n");
    unregister_chrdev((unsigned int )major_num, "bpctl");
    return (-1);
  } else {
  }
  memset((void *)bpctl_dev_arr, 0, (unsigned long )device_num * 1744UL);
  pdev1 = 0;
  idx = 0;
  goto ldv_41789;
  ldv_41788: ;
  goto ldv_41786;
  ldv_41785:
  (bpctl_dev_arr + (unsigned long )idx_dev)->pdev = pdev1;
  mmio_start = (unsigned long )pdev1->resource[0].start;
  mmio_len = pdev1->resource[0].start != 0ULL || pdev1->resource[0].end != pdev1->resource[0].start ? (unsigned long )((pdev1->resource[0].end - pdev1->resource[0].start) + 1ULL) : 0UL;
  (bpctl_dev_arr + (unsigned long )idx_dev)->desc = dev_desc[tx_ctl_pci_tbl[idx].index].name;
  (bpctl_dev_arr + (unsigned long )idx_dev)->name = tx_ctl_pci_tbl[idx].bp_name;
  (bpctl_dev_arr + (unsigned long )idx_dev)->device = tx_ctl_pci_tbl[idx].device;
  (bpctl_dev_arr + (unsigned long )idx_dev)->vendor = tx_ctl_pci_tbl[idx].vendor;
  (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice = tx_ctl_pci_tbl[idx].subdevice;
  (bpctl_dev_arr + (unsigned long )idx_dev)->subvendor = tx_ctl_pci_tbl[idx].subvendor;
  (bpctl_dev_arr + (unsigned long )idx_dev)->func = (unsigned int )((uint8_t )pdev1->devfn) & 7U;
  (bpctl_dev_arr + (unsigned long )idx_dev)->slot = (unsigned int )((uint8_t )(pdev1->devfn >> 3)) & 31U;
  (bpctl_dev_arr + (unsigned long )idx_dev)->bus = (pdev1->bus)->number;
  tmp___0 = ioremap((resource_size_t )mmio_start, mmio_len);
  (bpctl_dev_arr + (unsigned long )idx_dev)->mem_map = (unsigned long )tmp___0;
  spinlock_check(& (bpctl_dev_arr + (unsigned long )idx_dev)->bypass_wr_lock);
  __raw_spin_lock_init(& (bpctl_dev_arr + (unsigned long )idx_dev)->bypass_wr_lock.ldv_5961.rlock,
                       "&(&bpctl_dev_arr[idx_dev].bypass_wr_lock)->rlock", & __key);
  if ((((((((((((((((((((((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 12U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1153U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1154U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1155U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1152U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1409U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1410U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1411U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1408U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 289U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 290U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 291U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 392U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 392U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 393U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 393U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 396U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 84U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 304U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 306U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 307U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 288U) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_10g9 = 1;
  } else {
  }
  if ((((((((((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 258U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 257U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 259U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 352U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 353U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 354U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1308U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 385U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 386U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 355U) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_10g = 1;
  } else {
  }
  if ((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 416U) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_540 = 1;
  } else {
  }
  if ((((((((((((((((((((((((((((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 86U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 87U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 801U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 802U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 803U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 769U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 770U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 771U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 772U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 777U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 778U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 779U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 808U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 810U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 808U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1025U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1026U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1027U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1057U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1058U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1059U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1281U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1282U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1283U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1313U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1314U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1315U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 811U) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_fiber5 = 1;
  } else {
  }
  if ((((((((((((((((((((((((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1120U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1136U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 896U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1140U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 960U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 972U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 984U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 976U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 992U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 912U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 904U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 897U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 898U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 899U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 899U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 913U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 914U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 915U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 961U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 962U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 963U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 977U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 978U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 979U) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_i80 = 1;
  } else {
  }
  if ((((((((((((((((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 897U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 898U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 899U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 899U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1121U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1122U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1123U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 913U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 914U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 915U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 961U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 962U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 963U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 977U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 978U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 979U) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_i80 = 1;
  } else {
  }
  if (((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice & 2560U) == 2560U) {
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_i80 = 1;
  } else {
  }
  if ((((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 321U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 322U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 323U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 320U) {
    if ((bpctl_dev_arr + (unsigned long )idx_dev)->ifindex == 0) {
      unregister_chrdev((unsigned int )major_num, "bpctl");
      printk("Please load network driver for %s adapter!\n", (bpctl_dev_arr + (unsigned long )idx_dev)->name);
      return (-1);
    } else {
    }
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->ndev != (unsigned long )((struct net_device *)0)) {
      if ((((bpctl_dev_arr + (unsigned long )idx_dev)->ndev)->flags & 1U) == 0U) {
        if ((((bpctl_dev_arr + (unsigned long )idx_dev)->ndev)->flags & 1U) == 0U) {
          unregister_chrdev((unsigned int )major_num, "bpctl");
          printk("Please bring up network interfaces for %s adapter!\n", (bpctl_dev_arr + (unsigned long )idx_dev)->name);
          return (-1);
        } else {
        }
      } else {
      }
    } else {
    }
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_10gb = 1;
  } else {
  }
  if ((bpctl_dev_arr + (unsigned long )idx_dev)->bp_10g9 == 0) {
    tmp___5 = is_bypass_fn(bpctl_dev_arr + (unsigned long )idx_dev);
    if (tmp___5 != 0) {
      printk("\016%s found, ", (bpctl_dev_arr + (unsigned long )idx_dev)->name);
      if (((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 38U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 39U) || (((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 4512U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 4256U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 4513U)) {
        (bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver = 255U;
      } else {
        tmp___1 = bypass_fw_ver(bpctl_dev_arr + (unsigned long )idx_dev);
        (bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver = (uint8_t )tmp___1;
      }
      if ((bpctl_dev_arr + (unsigned long )idx_dev)->bp_10gb == 1 && (unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver == 255U) {
        cnt = 100;
        goto ldv_41784;
        ldv_41783:
        iounmap((void volatile *)(bpctl_dev_arr + (unsigned long )idx_dev)->mem_map);
        mmio_start = (unsigned long )pdev1->resource[0].start;
        mmio_len = pdev1->resource[0].start != 0ULL || pdev1->resource[0].end != pdev1->resource[0].start ? (unsigned long )((pdev1->resource[0].end - pdev1->resource[0].start) + 1ULL) : 0UL;
        tmp___2 = ioremap((resource_size_t )mmio_start, mmio_len);
        (bpctl_dev_arr + (unsigned long )idx_dev)->mem_map = (unsigned long )tmp___2;
        tmp___3 = bypass_fw_ver(bpctl_dev_arr + (unsigned long )idx_dev);
        (bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver = (uint8_t )tmp___3;
        if ((unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver == 168U) {
          goto ldv_41782;
        } else {
        }
        ldv_41784:
        tmp___4 = cnt;
        cnt = cnt - 1;
        if (tmp___4 != 0) {
          goto ldv_41783;
        } else {
        }
        ldv_41782: ;
      } else {
      }
      printk("firmware version: 0x%x\n", (int )(bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver);
    } else {
    }
    (bpctl_dev_arr + (unsigned long )idx_dev)->wdt_status = -1;
    (bpctl_dev_arr + (unsigned long )idx_dev)->reset_time = 0U;
    atomic_set(& (bpctl_dev_arr + (unsigned long )idx_dev)->wdt_busy, 0);
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_status_un = 1U;
    bypass_caps_init(bpctl_dev_arr + (unsigned long )idx_dev);
    init_bypass_wd_auto(bpctl_dev_arr + (unsigned long )idx_dev);
    init_bypass_tpl_auto(bpctl_dev_arr + (unsigned long )idx_dev);
    if ((((((((bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1299U || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1300U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 66U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1296U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 59U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1301U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 1302U) || (bpctl_dev_arr + (unsigned long )idx_dev)->subdevice == 65U) {
      reset_cont(bpctl_dev_arr + (unsigned long )idx_dev);
    } else {
    }
  } else {
  }
  idx_dev = idx_dev + 1;
  ldv_41786:
  pdev1 = pci_get_subsys(tx_ctl_pci_tbl[idx].vendor, tx_ctl_pci_tbl[idx].device, tx_ctl_pci_tbl[idx].subvendor,
                         tx_ctl_pci_tbl[idx].subdevice, pdev1);
  if ((unsigned long )pdev1 != (unsigned long )((struct pci_dev *)0)) {
    goto ldv_41785;
  } else {
  }
  idx = idx + 1;
  ldv_41789: ;
  if (tx_ctl_pci_tbl[idx].vendor != 0U) {
    goto ldv_41788;
  } else {
  }
  if_scan_init();
  sema_init(& bpctl_sema, 1);
  spinlock_check(& bpvm_lock);
  __raw_spin_lock_init(& bpvm_lock.ldv_5961.rlock, "&(&bpvm_lock)->rlock", & __key___0);
  pbpctl_dev_c = 0;
  idx_dev = 0;
  goto ldv_41794;
  ldv_41793: ;
  if ((bpctl_dev_arr + (unsigned long )idx_dev)->bp_10g9 != 0) {
    pbpctl_dev_c = get_status_port_fn(bpctl_dev_arr + (unsigned long )idx_dev);
    tmp___7 = is_bypass_fn(bpctl_dev_arr + (unsigned long )idx_dev);
    if (tmp___7 != 0) {
      printk("\016%s found, ", (bpctl_dev_arr + (unsigned long )idx_dev)->name);
      tmp___6 = bypass_fw_ver(bpctl_dev_arr + (unsigned long )idx_dev);
      (bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver = (uint8_t )tmp___6;
      printk("firmware version: 0x%x\n", (int )(bpctl_dev_arr + (unsigned long )idx_dev)->bp_fw_ver);
    } else {
    }
    (bpctl_dev_arr + (unsigned long )idx_dev)->wdt_status = -1;
    (bpctl_dev_arr + (unsigned long )idx_dev)->reset_time = 0U;
    atomic_set(& (bpctl_dev_arr + (unsigned long )idx_dev)->wdt_busy, 0);
    (bpctl_dev_arr + (unsigned long )idx_dev)->bp_status_un = 1U;
    bypass_caps_init(bpctl_dev_arr + (unsigned long )idx_dev);
    init_bypass_wd_auto(bpctl_dev_arr + (unsigned long )idx_dev);
    init_bypass_tpl_auto(bpctl_dev_arr + (unsigned long )idx_dev);
  } else {
  }
  idx_dev = idx_dev + 1;
  ldv_41794: ;
  if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
    goto ldv_41793;
  } else {
  }
  register_netdevice_notifier(& bp_notifier_block);
  return (0);
}
}
static void bypass_cleanup_module(void)
{
  int i ;
  {
  unregister_netdevice_notifier(& bp_notifier_block);
  i = 0;
  goto ldv_41801;
  ldv_41800:
  remove_bypass_wd_auto(bpctl_dev_arr + (unsigned long )i);
  (bpctl_dev_arr + (unsigned long )i)->reset_time = 0U;
  remove_bypass_tpl_auto(bpctl_dev_arr + (unsigned long )i);
  i = i + 1;
  ldv_41801: ;
  if (i < device_num) {
    goto ldv_41800;
  } else {
  }
  i = 0;
  goto ldv_41804;
  ldv_41803:
  iounmap((void volatile *)(bpctl_dev_arr + (unsigned long )i)->mem_map);
  i = i + 1;
  ldv_41804: ;
  if (i < device_num) {
    goto ldv_41803;
  } else {
  }
  if ((unsigned long )bpctl_dev_arr != (unsigned long )((bpctl_dev_t *)0)) {
    kfree((void const *)bpctl_dev_arr);
  } else {
  }
  unregister_chrdev((unsigned int )major_num, "bpctl");
  return;
}
}
int is_bypass_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = is_bypass(tmp);
  return (tmp___0);
}
}
int set_bypass_sd(int ifindex , int bypass_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_bypass_fn(tmp, bypass_mode);
  return (tmp___0);
}
}
int get_bypass_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_fn(tmp);
  return (tmp___0);
}
}
int get_bypass_change_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_change_fn(tmp);
  return (tmp___0);
}
}
int set_dis_bypass_sd(int ifindex , int dis_param )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_dis_bypass_fn(tmp, dis_param);
  return (tmp___0);
}
}
int get_dis_bypass_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_dis_bypass_fn(tmp);
  return (tmp___0);
}
}
int set_bypass_pwoff_sd(int ifindex , int bypass_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_bypass_pwoff_fn(tmp, bypass_mode);
  return (tmp___0);
}
}
int get_bypass_pwoff_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_pwoff_fn(tmp);
  return (tmp___0);
}
}
int set_bypass_pwup_sd(int ifindex , int bypass_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_bypass_pwup_fn(tmp, bypass_mode);
  return (tmp___0);
}
}
int get_bypass_pwup_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_pwup_fn(tmp);
  return (tmp___0);
}
}
int set_bypass_wd_sd(int if_index , int ms_timeout , int *ms_timeout_set )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  bpctl_dev_t *tmp___1 ;
  {
  tmp = get_dev_idx_p(if_index);
  tmp___0 = is_bypass(tmp);
  if (tmp___0 <= 0) {
    return (-1);
  } else {
  }
  tmp___1 = get_dev_idx_p(if_index);
  *ms_timeout_set = set_bypass_wd_fn(tmp___1, ms_timeout);
  return (0);
}
}
int get_bypass_wd_sd(int ifindex , int *timeout )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_wd_fn(tmp, timeout);
  return (tmp___0);
}
}
int get_wd_expire_time_sd(int ifindex , int *time_left )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_wd_expire_time_fn(tmp, time_left);
  return (tmp___0);
}
}
int reset_bypass_wd_timer_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = reset_bypass_wd_timer_fn(tmp);
  return (tmp___0);
}
}
int get_wd_set_caps_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_wd_set_caps_fn(tmp);
  return (tmp___0);
}
}
int set_std_nic_sd(int ifindex , int nic_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_std_nic_fn(tmp, nic_mode);
  return (tmp___0);
}
}
int get_std_nic_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_std_nic_fn(tmp);
  return (tmp___0);
}
}
int set_tap_sd(int ifindex , int tap_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_tap_fn(tmp, tap_mode);
  return (tmp___0);
}
}
int get_tap_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_tap_fn(tmp);
  return (tmp___0);
}
}
int set_tap_pwup_sd(int ifindex , int tap_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_tap_pwup_fn(tmp, tap_mode);
  return (tmp___0);
}
}
int get_tap_pwup_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_tap_pwup_fn(tmp);
  return (tmp___0);
}
}
int get_tap_change_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_tap_change_fn(tmp);
  return (tmp___0);
}
}
int set_dis_tap_sd(int ifindex , int dis_param )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_dis_tap_fn(tmp, dis_param);
  return (tmp___0);
}
}
int get_dis_tap_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_dis_tap_fn(tmp);
  return (tmp___0);
}
}
int set_bp_disc_sd(int ifindex , int disc_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_disc_fn(tmp, disc_mode);
  return (tmp___0);
}
}
int get_bp_disc_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_disc_fn(tmp);
  return (tmp___0);
}
}
int set_bp_disc_pwup_sd(int ifindex , int disc_mode )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_disc_pwup_fn(tmp, disc_mode);
  return (tmp___0);
}
}
int get_bp_disc_pwup_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_disc_pwup_fn(tmp);
  return (tmp___0);
}
}
int get_bp_disc_change_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_disc_change_fn(tmp);
  return (tmp___0);
}
}
int set_bp_dis_disc_sd(int ifindex , int dis_param )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_dis_disc_fn(tmp, dis_param);
  return (tmp___0);
}
}
int get_bp_dis_disc_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_dis_disc_fn(tmp);
  return (tmp___0);
}
}
int get_wd_exp_mode_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_wd_exp_mode_fn(tmp);
  return (tmp___0);
}
}
int set_wd_exp_mode_sd(int ifindex , int param )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_wd_exp_mode_fn(tmp, param);
  return (tmp___0);
}
}
int reset_cont_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = reset_cont_fn(tmp);
  return (tmp___0);
}
}
int set_tx_sd(int ifindex , int tx_state )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_tx_fn(tmp, tx_state);
  return (tmp___0);
}
}
int set_tpl_sd(int ifindex , int tpl_state )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_tpl_fn(tmp, tpl_state);
  return (tmp___0);
}
}
int set_bp_hw_reset_sd(int ifindex , int status )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_bp_hw_reset_fn(tmp, status);
  return (tmp___0);
}
}
int set_wd_autoreset_sd(int ifindex , int param )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = set_wd_autoreset_fn(tmp, param);
  return (tmp___0);
}
}
int get_wd_autoreset_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_wd_autoreset_fn(tmp);
  return (tmp___0);
}
}
int get_bypass_caps_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_caps_fn(tmp);
  return (tmp___0);
}
}
int get_bypass_slave_sd(int ifindex )
{
  bpctl_dev_t *pbpctl_dev_out ;
  int ret ;
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_slave_fn(tmp, & pbpctl_dev_out);
  ret = tmp___0;
  if (ret == 1) {
    return (pbpctl_dev_out->ifindex);
  } else {
  }
  return (-1);
}
}
int get_tx_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_tx_fn(tmp);
  return (tmp___0);
}
}
int get_tpl_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_tpl_fn(tmp);
  return (tmp___0);
}
}
int get_bp_hw_reset_sd(int ifindex )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bp_hw_reset_fn(tmp);
  return (tmp___0);
}
}
int get_bypass_info_sd(int ifindex , struct bp_info *bp_info )
{
  bpctl_dev_t *tmp ;
  int tmp___0 ;
  {
  tmp = get_dev_idx_p(ifindex);
  tmp___0 = get_bypass_info_fn(tmp, (char *)(& bp_info->prod_name), (char *)(& bp_info->fw_ver));
  return (tmp___0);
}
}
int bp_if_scan_sd(void)
{
  {
  if_scan_init();
  return (0);
}
}
static struct proc_dir_entry *bp_procfs_dir ;
static struct proc_dir_entry *proc_getdir(char *name , struct proc_dir_entry *proc_dir )
{
  struct proc_dir_entry *pde ;
  int tmp ;
  {
  pde = proc_dir;
  pde = pde->subdir;
  goto ldv_42275;
  ldv_42274: ;
  if ((unsigned int )pde->namelen != 0U) {
    tmp = strcmp((char const *)name, (char const *)(& pde->name));
    if (tmp == 0) {
      goto ldv_42273;
    } else {
    }
  } else {
  }
  pde = pde->next;
  ldv_42275: ;
  if ((unsigned long )pde != (unsigned long )((struct proc_dir_entry *)0)) {
    goto ldv_42274;
  } else {
  }
  ldv_42273: ;
  if ((unsigned long )pde == (unsigned long )((struct proc_dir_entry *)0)) {
    pde = proc_mkdir((char const *)name, proc_dir);
    if ((unsigned long )pde == (unsigned long )((struct proc_dir_entry *)0)) {
      return (pde);
    } else {
    }
  } else {
  }
  return (pde);
}
}
int bp_proc_create(void)
{
  {
  bp_procfs_dir = proc_getdir((char *)"bypass", init_net.proc_net);
  if ((unsigned long )bp_procfs_dir == (unsigned long )((struct proc_dir_entry *)0)) {
    printk("\017Could not create procfs nicinfo directory %s\n", (char *)"bypass");
    return (-1);
  } else {
  }
  return (0);
}
}
int bypass_proc_create_entry_sd(struct pfs_unit_sd *pfs_unit_curr , char *proc_name ,
                                write_proc_t *write_proc , read_proc_t *read_proc ,
                                struct proc_dir_entry *parent_pfs , void *data )
{
  {
  strcpy((char *)(& pfs_unit_curr->proc_name), (char const *)proc_name);
  pfs_unit_curr->proc_entry = create_proc_entry((char const *)(& pfs_unit_curr->proc_name),
                                                33188, parent_pfs);
  if ((unsigned long )pfs_unit_curr->proc_entry == (unsigned long )((struct proc_dir_entry *)0)) {
    return (-1);
  } else {
  }
  (pfs_unit_curr->proc_entry)->read_proc = read_proc;
  (pfs_unit_curr->proc_entry)->write_proc = write_proc;
  (pfs_unit_curr->proc_entry)->data = data;
  return (0);
}
}
int get_bypass_info_pfs(char *page , char **start , off_t off , int count , int *eof ,
                        void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int tmp ;
  int tmp___0 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  tmp = sprintf(page, "Name\t\t\t%s\n", pbp_device_block->name);
  len = tmp + len;
  tmp___0 = sprintf(page + (unsigned long )len, "Firmware version\t0x%x\n", (int )pbp_device_block->bp_fw_ver);
  len = tmp___0 + len;
  *eof = 1;
  return (len);
}
}
int get_bypass_slave_pfs(char *page , char **start , off_t off , int count , int *eof ,
                         void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  bpctl_dev_t *pbp_device_block_slave ;
  int idx_dev ;
  struct net_device *net_slave_dev ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  pbp_device_block_slave = 0;
  idx_dev = 0;
  net_slave_dev = 0;
  if ((unsigned int )pbp_device_block->func == 0U || (unsigned int )pbp_device_block->func == 2U) {
    idx_dev = 0;
    goto ldv_42312;
    ldv_42311: ;
    if ((int )(bpctl_dev_arr + (unsigned long )idx_dev)->bus == (int )pbp_device_block->bus && (int )(bpctl_dev_arr + (unsigned long )idx_dev)->slot == (int )pbp_device_block->slot) {
      if ((unsigned int )pbp_device_block->func == 0U && (unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 1U) {
        pbp_device_block_slave = bpctl_dev_arr + (unsigned long )idx_dev;
        goto ldv_42310;
      } else {
      }
      if ((unsigned int )pbp_device_block->func == 2U && (unsigned int )(bpctl_dev_arr + (unsigned long )idx_dev)->func == 3U) {
        pbp_device_block_slave = bpctl_dev_arr + (unsigned long )idx_dev;
        goto ldv_42310;
      } else {
      }
    } else {
    }
    idx_dev = idx_dev + 1;
    ldv_42312: ;
    if ((unsigned long )(bpctl_dev_arr + (unsigned long )idx_dev)->pdev != (unsigned long )((struct pci_dev *)0) && idx_dev < device_num) {
      goto ldv_42311;
    } else {
    }
    ldv_42310: ;
  } else {
    pbp_device_block_slave = pbp_device_block;
  }
  if ((unsigned long )pbp_device_block_slave == (unsigned long )((bpctl_dev_t *)0)) {
    len = sprintf(page, "fail\n");
    *eof = 1;
    return (len);
  } else {
  }
  net_slave_dev = pbp_device_block_slave->ndev;
  if ((unsigned long )net_slave_dev != (unsigned long )((struct net_device *)0)) {
    len = sprintf(page, "%s\n", (char *)(& net_slave_dev->name));
  } else {
  }
  *eof = 1;
  return (len);
}
}
int get_bypass_caps_pfs(char *page , char **start , off_t off , int count , int *eof ,
                        void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_bypass_caps_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "-1\n");
  } else {
    len = sprintf(page, "0x%x\n", ret);
  }
  *eof = 1;
  return (len);
}
}
int get_wd_set_caps_pfs(char *page , char **start , off_t off , int count , int *eof ,
                        void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_wd_set_caps_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "-1\n");
  } else {
    len = sprintf(page, "0x%x\n", ret);
  }
  *eof = 1;
  return (len);
}
}
int set_bypass_pfs(struct file *file , char const *buffer , unsigned long count ,
                   void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int bypass_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  bypass_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-1);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    bypass_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      bypass_param = 0;
    } else {
    }
  }
  set_bypass_fn(pbp_device_block, bypass_param);
  return ((int )count);
}
}
int set_tap_pfs(struct file *file , char const *buffer , unsigned long count , void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int tap_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  tap_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-1);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    tap_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      tap_param = 0;
    } else {
    }
  }
  set_tap_fn(pbp_device_block, tap_param);
  return ((int )count);
}
}
int set_disc_pfs(struct file *file , char const *buffer , unsigned long count ,
                 void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int tap_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  tap_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-1);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    tap_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      tap_param = 0;
    } else {
    }
  }
  set_disc_fn(pbp_device_block, tap_param);
  return ((int )count);
}
}
int get_bypass_pfs(char *page , char **start , off_t off , int count , int *eof ,
                   void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_bypass_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 1) {
    len = sprintf(page, "on\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
  }
  *eof = 1;
  return (len);
}
}
int get_tap_pfs(char *page , char **start , off_t off , int count , int *eof , void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_tap_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 1) {
    len = sprintf(page, "on\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
  }
  *eof = 1;
  return (len);
}
}
int get_disc_pfs(char *page , char **start , off_t off , int count , int *eof , void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_disc_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 1) {
    len = sprintf(page, "on\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
  }
  *eof = 1;
  return (len);
}
}
int get_bypass_change_pfs(char *page , char **start , off_t off , int count , int *eof ,
                          void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_bypass_change_fn(pbp_device_block);
  if (ret == 1) {
    len = sprintf(page, "on\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "fail\n");
  }
  *eof = 1;
  return (len);
}
}
int get_tap_change_pfs(char *page , char **start , off_t off , int count , int *eof ,
                       void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_tap_change_fn(pbp_device_block);
  if (ret == 1) {
    len = sprintf(page, "on\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "fail\n");
  }
  *eof = 1;
  return (len);
}
}
int get_disc_change_pfs(char *page , char **start , off_t off , int count , int *eof ,
                        void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_disc_change_fn(pbp_device_block);
  if (ret == 1) {
    len = sprintf(page, "on\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "fail\n");
  }
  *eof = 1;
  return (len);
}
}
int set_bypass_wd_pfs(struct file *file , char const *buffer , unsigned long count ,
                      void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int timeout ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  ret = kstrtoint_from_user(buffer, count, 10U, & timeout);
  if (ret != 0) {
    return (ret);
  } else {
  }
  set_bypass_wd_fn(pbp_device_block, timeout);
  return ((int )count);
}
}
int get_bypass_wd_pfs(char *page , char **start , off_t off , int count , int *eof ,
                      void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  int timeout ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  timeout = 0;
  ret = get_bypass_wd_fn(pbp_device_block, & timeout);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (timeout == -1) {
    len = sprintf(page, "unknown\n");
  } else
  if (timeout == 0) {
    len = sprintf(page, "disable\n");
  } else {
    len = sprintf(page, "%d\n", timeout);
  }
  *eof = 1;
  return (len);
}
}
int get_wd_expire_time_pfs(char *page , char **start , off_t off , int count , int *eof ,
                           void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  int timeout ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  timeout = 0;
  ret = get_wd_expire_time_fn(pbp_device_block, & timeout);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (timeout == -1) {
    len = sprintf(page, "expire\n");
  } else
  if (timeout == 0) {
    len = sprintf(page, "disable\n");
  } else {
    len = sprintf(page, "%d\n", timeout);
  }
  *eof = 1;
  return (len);
}
}
int get_tpl_pfs(char *page , char **start , off_t off , int count , int *eof , void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_tpl_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 1) {
    len = sprintf(page, "on\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
  }
  *eof = 1;
  return (len);
}
}
int reset_bypass_wd_pfs(char *page , char **start , off_t off , int count , int *eof ,
                        void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = reset_bypass_wd_timer_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "disable\n");
  } else
  if (ret == 1) {
    len = sprintf(page, "success\n");
  } else {
  }
  *eof = 1;
  return (len);
}
}
int set_dis_bypass_pfs(struct file *file , char const *buffer , unsigned long count ,
                       void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int bypass_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  bypass_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    bypass_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      bypass_param = 0;
    } else {
    }
  }
  set_dis_bypass_fn(pbp_device_block, bypass_param);
  return ((int )count);
}
}
int set_dis_tap_pfs(struct file *file , char const *buffer , unsigned long count ,
                    void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int tap_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  tap_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    tap_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      tap_param = 0;
    } else {
    }
  }
  set_dis_tap_fn(pbp_device_block, tap_param);
  return ((int )count);
}
}
int set_dis_disc_pfs(struct file *file , char const *buffer , unsigned long count ,
                     void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int tap_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  tap_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    tap_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      tap_param = 0;
    } else {
    }
  }
  set_dis_disc_fn(pbp_device_block, tap_param);
  return ((int )count);
}
}
int get_dis_bypass_pfs(char *page , char **start , off_t off , int count , int *eof ,
                       void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_dis_bypass_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int get_dis_tap_pfs(char *page , char **start , off_t off , int count , int *eof ,
                    void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_dis_tap_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int get_dis_disc_pfs(char *page , char **start , off_t off , int count , int *eof ,
                     void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_dis_disc_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int set_bypass_pwup_pfs(struct file *file , char const *buffer , unsigned long count ,
                        void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int bypass_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  bypass_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    bypass_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      bypass_param = 0;
    } else {
    }
  }
  set_bypass_pwup_fn(pbp_device_block, bypass_param);
  return ((int )count);
}
}
int set_bypass_pwoff_pfs(struct file *file , char const *buffer , unsigned long count ,
                         void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int bypass_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  bypass_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    bypass_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      bypass_param = 0;
    } else {
    }
  }
  set_bypass_pwoff_fn(pbp_device_block, bypass_param);
  return ((int )count);
}
}
int set_tap_pwup_pfs(struct file *file , char const *buffer , unsigned long count ,
                     void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int tap_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  tap_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    tap_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      tap_param = 0;
    } else {
    }
  }
  set_tap_pwup_fn(pbp_device_block, tap_param);
  return ((int )count);
}
}
int set_disc_pwup_pfs(struct file *file , char const *buffer , unsigned long count ,
                      void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int tap_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  tap_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    tap_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      tap_param = 0;
    } else {
    }
  }
  set_disc_pwup_fn(pbp_device_block, tap_param);
  return ((int )count);
}
}
int get_bypass_pwup_pfs(char *page , char **start , off_t off , int count , int *eof ,
                        void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_bypass_pwup_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int get_bypass_pwoff_pfs(char *page , char **start , off_t off , int count , int *eof ,
                         void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_bypass_pwoff_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int get_tap_pwup_pfs(char *page , char **start , off_t off , int count , int *eof ,
                     void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_tap_pwup_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int get_disc_pwup_pfs(char *page , char **start , off_t off , int count , int *eof ,
                      void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_disc_pwup_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int set_std_nic_pfs(struct file *file , char const *buffer , unsigned long count ,
                    void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int bypass_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  bypass_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    bypass_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      bypass_param = 0;
    } else {
    }
  }
  set_std_nic_fn(pbp_device_block, bypass_param);
  return ((int )count);
}
}
int get_std_nic_pfs(char *page , char **start , off_t off , int count , int *eof ,
                    void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_std_nic_fn(pbp_device_block);
  if (ret == -1) {
    len = sprintf(page, "fail\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "off\n");
  } else {
    len = sprintf(page, "on\n");
  }
  *eof = 1;
  return (len);
}
}
int get_wd_exp_mode_pfs(char *page , char **start , off_t off , int count , int *eof ,
                        void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_wd_exp_mode_fn(pbp_device_block);
  if (ret == 1) {
    len = sprintf(page, "tap\n");
  } else
  if (ret == 0) {
    len = sprintf(page, "bypass\n");
  } else
  if (ret == 2) {
    len = sprintf(page, "disc\n");
  } else {
    len = sprintf(page, "fail\n");
  }
  *eof = 1;
  return (len);
}
}
int set_wd_exp_mode_pfs(struct file *file , char const *buffer , unsigned long count ,
                        void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int bypass_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  bypass_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-1);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___3 = strcmp((char const *)(& kbuf), "tap");
  if (tmp___3 == 0) {
    bypass_param = 1;
  } else {
    tmp___2 = strcmp((char const *)(& kbuf), "bypass");
    if (tmp___2 == 0) {
      bypass_param = 0;
    } else {
      tmp___1 = strcmp((char const *)(& kbuf), "disc");
      if (tmp___1 == 0) {
        bypass_param = 2;
      } else {
      }
    }
  }
  set_wd_exp_mode_fn(pbp_device_block, bypass_param);
  return ((int )count);
}
}
int get_wd_autoreset_pfs(char *page , char **start , off_t off , int count , int *eof ,
                         void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int len ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  len = 0;
  ret = 0;
  ret = get_wd_autoreset_fn(pbp_device_block);
  if (ret >= 0) {
    len = sprintf(page, "%d\n", ret);
  } else {
    len = sprintf(page, "fail\n");
  }
  *eof = 1;
  return (len);
}
}
int set_wd_autoreset_pfs(struct file *file , char const *buffer , unsigned long count ,
                         void *data )
{
  bpctl_dev_t *pbp_device_block ;
  int timeout ;
  int ret ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  ret = kstrtoint_from_user(buffer, count, 10U, & timeout);
  if (ret != 0) {
    return (ret);
  } else {
  }
  set_wd_autoreset_fn(pbp_device_block, timeout);
  return ((int )count);
}
}
int set_tpl_pfs(struct file *file , char const *buffer , unsigned long count , void *data )
{
  char kbuf[256U] ;
  bpctl_dev_t *pbp_device_block ;
  int tpl_param ;
  int length ;
  unsigned long tmp ;
  size_t tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  pbp_device_block = (bpctl_dev_t *)data;
  tpl_param = 0;
  length = 0;
  if (count > 255UL) {
    return (-1);
  } else {
  }
  tmp = copy_from_user((void *)(& kbuf), (void const *)buffer, count);
  if (tmp != 0UL) {
    return (-1);
  } else {
  }
  kbuf[count] = 0;
  tmp___0 = strlen((char const *)(& kbuf));
  length = (int )tmp___0;
  if ((int )((signed char )kbuf[length + -1]) == 10) {
    length = length - 1;
    kbuf[length] = 0;
  } else {
  }
  tmp___2 = strcmp((char const *)(& kbuf), "on");
  if (tmp___2 == 0) {
    tpl_param = 1;
  } else {
    tmp___1 = strcmp((char const *)(& kbuf), "off");
    if (tmp___1 == 0) {
      tpl_param = 0;
    } else {
    }
  }
  set_tpl_fn(pbp_device_block, tpl_param);
  return ((int )count);
}
}
int bypass_proc_create_dev_sd(bpctl_dev_t *pbp_device_block )
{
  struct bypass_pfs_sd *current_pfs ;
  struct proc_dir_entry *procfs_dir ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  {
  current_pfs = & pbp_device_block->bypass_pfs_set;
  procfs_dir = 0;
  ret = 0;
  if ((unsigned long )pbp_device_block->ndev == (unsigned long )((struct net_device *)0)) {
    return (-1);
  } else {
  }
  sprintf((char *)(& current_pfs->dir_name), "bypass_%s", (char *)(& (pbp_device_block->ndev)->name));
  if ((unsigned long )bp_procfs_dir == (unsigned long )((struct proc_dir_entry *)0)) {
    return (-1);
  } else {
  }
  procfs_dir = proc_getdir((char *)(& current_pfs->dir_name), bp_procfs_dir);
  if ((unsigned long )procfs_dir == (unsigned long )((struct proc_dir_entry *)0)) {
    printk("\017Could not create procfs directory %s\n", (char *)(& current_pfs->dir_name));
    return (-1);
  } else {
  }
  current_pfs->bypass_entry = procfs_dir;
  tmp = bypass_proc_create_entry_sd(& current_pfs->bypass_info, (char *)"bypass_info",
                                    0, & get_bypass_info_pfs, procfs_dir, (void *)pbp_device_block);
  if (tmp != 0) {
    ret = -1;
  } else {
  }
  if ((pbp_device_block->bp_caps & 8U) != 0U) {
    tmp___0 = bypass_proc_create_entry_sd(& current_pfs->bypass_slave, (char *)"bypass_slave",
                                          0, & get_bypass_slave_pfs, procfs_dir, (void *)pbp_device_block);
    if (tmp___0 != 0) {
      ret = -1;
    } else {
    }
    tmp___1 = bypass_proc_create_entry_sd(& current_pfs->bypass_caps, (char *)"bypass_caps",
                                          0, & get_bypass_caps_pfs, procfs_dir, (void *)pbp_device_block);
    if (tmp___1 != 0) {
      ret = -1;
    } else {
    }
    tmp___2 = bypass_proc_create_entry_sd(& current_pfs->wd_set_caps, (char *)"wd_set_caps",
                                          0, & get_wd_set_caps_pfs, procfs_dir, (void *)pbp_device_block);
    if (tmp___2 != 0) {
      ret = -1;
    } else {
    }
    tmp___3 = bypass_proc_create_entry_sd(& current_pfs->bypass_wd, (char *)"bypass_wd",
                                          & set_bypass_wd_pfs, & get_bypass_wd_pfs,
                                          procfs_dir, (void *)pbp_device_block);
    if (tmp___3 != 0) {
      ret = -1;
    } else {
    }
    tmp___4 = bypass_proc_create_entry_sd(& current_pfs->wd_expire_time, (char *)"wd_expire_time",
                                          0, & get_wd_expire_time_pfs, procfs_dir,
                                          (void *)pbp_device_block);
    if (tmp___4 != 0) {
      ret = -1;
    } else {
    }
    tmp___5 = bypass_proc_create_entry_sd(& current_pfs->reset_bypass_wd, (char *)"reset_bypass_wd",
                                          0, & reset_bypass_wd_pfs, procfs_dir, (void *)pbp_device_block);
    if (tmp___5 != 0) {
      ret = -1;
    } else {
    }
    tmp___6 = bypass_proc_create_entry_sd(& current_pfs->std_nic, (char *)"std_nic",
                                          & set_std_nic_pfs, & get_std_nic_pfs, procfs_dir,
                                          (void *)pbp_device_block);
    if (tmp___6 != 0) {
      ret = -1;
    } else {
    }
    if ((int )pbp_device_block->bp_caps & 1) {
      tmp___7 = bypass_proc_create_entry_sd(& current_pfs->bypass, (char *)"bypass",
                                            & set_bypass_pfs, & get_bypass_pfs, procfs_dir,
                                            (void *)pbp_device_block);
      if (tmp___7 != 0) {
        ret = -1;
      } else {
      }
      tmp___8 = bypass_proc_create_entry_sd(& current_pfs->dis_bypass, (char *)"dis_bypass",
                                            & set_dis_bypass_pfs, & get_dis_bypass_pfs,
                                            procfs_dir, (void *)pbp_device_block);
      if (tmp___8 != 0) {
        ret = -1;
      } else {
      }
      tmp___9 = bypass_proc_create_entry_sd(& current_pfs->bypass_pwup, (char *)"bypass_pwup",
                                            & set_bypass_pwup_pfs, & get_bypass_pwup_pfs,
                                            procfs_dir, (void *)pbp_device_block);
      if (tmp___9 != 0) {
        ret = -1;
      } else {
      }
      tmp___10 = bypass_proc_create_entry_sd(& current_pfs->bypass_pwoff, (char *)"bypass_pwoff",
                                             & set_bypass_pwoff_pfs, & get_bypass_pwoff_pfs,
                                             procfs_dir, (void *)pbp_device_block);
      if (tmp___10 != 0) {
        ret = -1;
      } else {
      }
      tmp___11 = bypass_proc_create_entry_sd(& current_pfs->bypass_change, (char *)"bypass_change",
                                             0, & get_bypass_change_pfs, procfs_dir,
                                             (void *)pbp_device_block);
      if (tmp___11 != 0) {
        ret = -1;
      } else {
      }
    } else {
    }
    if ((pbp_device_block->bp_caps & 262144U) != 0U) {
      tmp___12 = bypass_proc_create_entry_sd(& current_pfs->tap, (char *)"tap", & set_tap_pfs,
                                             & get_tap_pfs, procfs_dir, (void *)pbp_device_block);
      if (tmp___12 != 0) {
        ret = -1;
      } else {
      }
      tmp___13 = bypass_proc_create_entry_sd(& current_pfs->dis_tap, (char *)"dis_tap",
                                             & set_dis_tap_pfs, & get_dis_tap_pfs,
                                             procfs_dir, (void *)pbp_device_block);
      if (tmp___13 != 0) {
        ret = -1;
      } else {
      }
      tmp___14 = bypass_proc_create_entry_sd(& current_pfs->tap_pwup, (char *)"tap_pwup",
                                             & set_tap_pwup_pfs, & get_tap_pwup_pfs,
                                             procfs_dir, (void *)pbp_device_block);
      if (tmp___14 != 0) {
        ret = -1;
      } else {
      }
      tmp___15 = bypass_proc_create_entry_sd(& current_pfs->tap_change, (char *)"tap_change",
                                             0, & get_tap_change_pfs, procfs_dir,
                                             (void *)pbp_device_block);
      if (tmp___15 != 0) {
        ret = -1;
      } else {
      }
    } else {
    }
    if ((pbp_device_block->bp_caps & 268435456U) != 0U) {
      tmp___16 = bypass_proc_create_entry_sd(& current_pfs->tap, (char *)"disc", & set_disc_pfs,
                                             & get_disc_pfs, procfs_dir, (void *)pbp_device_block);
      if (tmp___16 != 0) {
        ret = -1;
      } else {
      }
      tmp___17 = bypass_proc_create_entry_sd(& current_pfs->dis_tap, (char *)"dis_disc",
                                             & set_dis_disc_pfs, & get_dis_disc_pfs,
                                             procfs_dir, (void *)pbp_device_block);
      if (tmp___17 != 0) {
        ret = -1;
      } else {
      }
      tmp___18 = bypass_proc_create_entry_sd(& current_pfs->tap_pwup, (char *)"disc_pwup",
                                             & set_disc_pwup_pfs, & get_disc_pwup_pfs,
                                             procfs_dir, (void *)pbp_device_block);
      if (tmp___18 != 0) {
        ret = -1;
      } else {
      }
      tmp___19 = bypass_proc_create_entry_sd(& current_pfs->tap_change, (char *)"disc_change",
                                             0, & get_disc_change_pfs, procfs_dir,
                                             (void *)pbp_device_block);
      if (tmp___19 != 0) {
        ret = -1;
      } else {
      }
    } else {
    }
    tmp___20 = bypass_proc_create_entry_sd(& current_pfs->wd_exp_mode, (char *)"wd_exp_mode",
                                           & set_wd_exp_mode_pfs, & get_wd_exp_mode_pfs,
                                           procfs_dir, (void *)pbp_device_block);
    if (tmp___20 != 0) {
      ret = -1;
    } else {
    }
    tmp___21 = bypass_proc_create_entry_sd(& current_pfs->wd_autoreset, (char *)"wd_autoreset",
                                           & set_wd_autoreset_pfs, & get_wd_autoreset_pfs,
                                           procfs_dir, (void *)pbp_device_block);
    if (tmp___21 != 0) {
      ret = -1;
    } else {
    }
    tmp___22 = bypass_proc_create_entry_sd(& current_pfs->tpl, (char *)"tpl", & set_tpl_pfs,
                                           & get_tpl_pfs, procfs_dir, (void *)pbp_device_block);
    if (tmp___22 != 0) {
      ret = -1;
    } else {
    }
  } else {
  }
  if (ret < 0) {
    printk("\017Create proc entry failed\n");
  } else {
  }
  return (ret);
}
}
int bypass_proc_remove_dev_sd(bpctl_dev_t *pbp_device_block )
{
  struct bypass_pfs_sd *current_pfs ;
  struct proc_dir_entry *pde ;
  struct proc_dir_entry *pde_curr ;
  char name[256U] ;
  {
  current_pfs = & pbp_device_block->bypass_pfs_set;
  pde = current_pfs->bypass_entry;
  pde_curr = 0;
  if ((unsigned long )pde == (unsigned long )((struct proc_dir_entry *)0)) {
    return (0);
  } else {
  }
  pde = pde->subdir;
  goto ldv_42726;
  ldv_42725:
  strcpy((char *)(& name), (char const *)(& pde->name));
  pde_curr = pde;
  pde = pde->next;
  remove_proc_entry((char const *)(& name), current_pfs->bypass_entry);
  ldv_42726: ;
  if ((unsigned long )pde != (unsigned long )((struct proc_dir_entry *)0)) {
    goto ldv_42725;
  } else {
  }
  if ((unsigned long )pde == (unsigned long )((struct proc_dir_entry *)0)) {
    remove_proc_entry((char const *)(& current_pfs->dir_name), bp_procfs_dir);
  } else {
  }
  current_pfs->bypass_entry = 0;
  return (0);
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct notifier_block *var_group1 ;
  unsigned long var_bp_device_event_0_p1 ;
  void *var_bp_device_event_0_p2 ;
  struct file *var_group2 ;
  unsigned int var_device_ioctl_195_p1 ;
  unsigned long var_device_ioctl_195_p2 ;
  struct inode *var_group3 ;
  int res_device_open_1 ;
  int ldv_s_Fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_Fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = bypass_init_module();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_42762;
  ldv_42761:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  bp_device_event(var_group1, var_bp_device_event_0_p1, var_bp_device_event_0_p2);
  goto ldv_42755;
  case 1: ;
  if (ldv_s_Fops_file_operations == 0) {
    ldv_handler_precall();
    res_device_open_1 = device_open(var_group3, var_group2);
    ldv_check_return_value(res_device_open_1);
    if (res_device_open_1 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_Fops_file_operations = ldv_s_Fops_file_operations + 1;
  } else {
  }
  goto ldv_42755;
  case 2: ;
  if (ldv_s_Fops_file_operations == 1) {
    ldv_handler_precall();
    device_release(var_group3, var_group2);
    ldv_s_Fops_file_operations = 0;
  } else {
  }
  goto ldv_42755;
  case 3:
  ldv_handler_precall();
  device_ioctl(var_group2, var_device_ioctl_195_p1, var_device_ioctl_195_p2);
  goto ldv_42755;
  default: ;
  goto ldv_42755;
  }
  ldv_42755: ;
  ldv_42762:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0 || ldv_s_Fops_file_operations != 0) {
    goto ldv_42761;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  bypass_cleanup_module();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
static int ldv_mutex_cred_guard_mutex ;
int ldv_mutex_lock_interruptible_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mutex ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  return __VERIFIER_nondet_int();
}
void __unregister_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int _raw_spin_trylock(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
struct proc_dir_entry *create_proc_entry(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2) {
  return ldv_malloc(sizeof(struct proc_dir_entry));
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int down_interruptible(struct semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoint_from_user(const char *arg0, size_t arg1, unsigned int arg2, int *arg3) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
struct pci_dev *pci_get_subsys(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, struct pci_dev *arg4) {
  return ldv_malloc(sizeof(struct pci_dev));
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return ldv_malloc(sizeof(struct proc_dir_entry));
}
int __VERIFIER_nondet_int(void);
int register_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void up(struct semaphore *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
