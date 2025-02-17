typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
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
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
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
struct __anonstruct____missing_field_name_10 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_11 {
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
union __anonunion____missing_field_name_9 {
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
   struct __anonstruct____missing_field_name_11 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_9 __annonCompField7 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_12 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_12 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_13 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_13 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct atomic_notifier_head;
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
union __anonunion____missing_field_name_16 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_16 __annonCompField8 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
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
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndreg {
   u64 lower_bound ;
   u64 upper_bound ;
};
struct bndcsr {
   u64 bndcfgu ;
   u64 bndstatus ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndreg bndreg[4U] ;
   struct bndcsr bndcsr ;
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
   unsigned char fpu_counter ;
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
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_27 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_27 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_26 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct ldv_thread;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_30 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_31 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_32 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct_futex_30 futex ;
   struct __anonstruct_nanosleep_31 nanosleep ;
   struct __anonstruct_poll_32 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_29 __annonCompField19 ;
};
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
union __anonunion____missing_field_name_46 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_46 __annonCompField20 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_47 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_47 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_48 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_48 kuid_t;
struct __anonstruct_kgid_t_49 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_49 kgid_t;
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
struct bin_attribute;
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
   struct bin_attribute **bin_attrs ;
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
};
struct kref {
   atomic_t refcount ;
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
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
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
   struct workqueue_struct *wq ;
   int cpu ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
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
   char *argv[3U] ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_50 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_50 nodemask_t;
struct path;
struct inode;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
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
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
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
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct atomic_notifier_head {
   spinlock_t lock ;
   struct notifier_block *head ;
};
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device_private;
struct device_driver;
struct driver_private;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
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
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
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
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
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
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
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
   bool offline_disabled ;
   bool offline ;
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_146 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_145 {
   struct __anonstruct____missing_field_name_146 __annonCompField32 ;
};
struct lockref {
   union __anonunion____missing_field_name_145 __annonCompField33 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_148 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField34 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_147 __annonCompField35 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_149 {
   struct hlist_node d_alias ;
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
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_149 d_u ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
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
struct mem_cgroup;
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_151 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_150 {
   struct __anonstruct____missing_field_name_151 __annonCompField36 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_150 __annonCompField37 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct backing_dev_info;
struct export_operations;
struct iovec;
struct nameidata;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
struct iov_iter;
struct vm_fault;
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
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_154 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_154 kprojid_t;
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
union __anonunion____missing_field_name_155 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
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
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct writeback_control;
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
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct hd_struct;
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
union __anonunion____missing_field_name_158 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_159 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_160 {
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
   union __anonunion____missing_field_name_158 __annonCompField40 ;
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
   union __anonunion____missing_field_name_159 __annonCompField41 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_160 __annonCompField42 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
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
union __anonunion_f_u_161 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_161 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
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
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_get_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_put_owner)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
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
struct __anonstruct_afs_163 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_162 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_163 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
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
   union __anonunion_fl_u_162 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   unsigned int s_quota_types ;
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
   struct workqueue_struct *s_dio_done_wq ;
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   void (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
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
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
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
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
   int (*dentry_open)(struct dentry * , struct file * , struct cred const * ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
struct __anonstruct____missing_field_name_169 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_170 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_168 {
   struct __anonstruct____missing_field_name_169 __annonCompField45 ;
   struct __anonstruct____missing_field_name_170 __annonCompField46 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_168 __annonCompField47 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_171 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_173 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_177 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_176 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_177 __annonCompField50 ;
   int units ;
};
struct __anonstruct____missing_field_name_175 {
   union __anonunion____missing_field_name_176 __annonCompField51 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_174 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_175 __annonCompField52 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_172 {
   union __anonunion____missing_field_name_173 __annonCompField49 ;
   union __anonunion____missing_field_name_174 __annonCompField53 ;
};
struct __anonstruct____missing_field_name_179 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_180 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_178 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_179 __annonCompField55 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_180 __annonCompField56 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_181 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_171 __annonCompField48 ;
   struct __anonstruct____missing_field_name_172 __annonCompField54 ;
   union __anonunion____missing_field_name_178 __annonCompField57 ;
   union __anonunion____missing_field_name_181 __annonCompField58 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_182 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
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
   struct __anonstruct_shared_182 shared ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   atomic_long_t nr_pmds ;
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
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
   void *bd_addr ;
};
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct user_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct proc_dir_entry;
struct nsproxy;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_194 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_194 __annonCompField64 ;
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
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
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
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
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
   bool sig_ok ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_196 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_196 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_198 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_199 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_200 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_201 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_203 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_202 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_203 _addr_bnd ;
};
struct __anonstruct__sigpoll_204 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_205 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_197 {
   int _pad[28U] ;
   struct __anonstruct__kill_198 _kill ;
   struct __anonstruct__timer_199 _timer ;
   struct __anonstruct__rt_200 _rt ;
   struct __anonstruct__sigchld_201 _sigchld ;
   struct __anonstruct__sigfault_202 _sigfault ;
   struct __anonstruct__sigpoll_204 _sigpoll ;
   struct __anonstruct__sigsys_205 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_197 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
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
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int in_hrtirq ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_208 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_209 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_211 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_210 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_211 __annonCompField67 ;
};
union __anonunion_type_data_212 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_214 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_213 {
   union __anonunion_payload_214 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_208 __annonCompField65 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_209 __annonCompField66 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_210 __annonCompField68 ;
   union __anonunion_type_data_212 type_data ;
   union __anonunion____missing_field_name_213 __annonCompField69 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
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
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
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
   struct list_head thread_head ;
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
   int posix_timer_id ;
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
   seqlock_t stats_lock ;
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
   unsigned int audit_tty_log_passwd ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
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
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
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
   u64 start_time ;
   u64 real_start_time ;
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
   struct sysv_shm sysvshm ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
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
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
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
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
};
struct ipmi_addr {
   int addr_type ;
   short channel ;
   char data[32U] ;
};
struct ipmi_system_interface_addr {
   int addr_type ;
   short channel ;
   unsigned char lun ;
};
struct ipmi_ipmb_addr {
   int addr_type ;
   short channel ;
   unsigned char slave_addr ;
   unsigned char lun ;
};
struct ipmi_lan_addr {
   int addr_type ;
   short channel ;
   unsigned char privilege ;
   unsigned char session_handle ;
   unsigned char remote_SWID ;
   unsigned char local_SWID ;
   unsigned char lun ;
};
struct kernel_ipmi_msg {
   unsigned char netfn ;
   unsigned char cmd ;
   unsigned short data_len ;
   unsigned char *data ;
};
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef u64 acpi_io_address;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_219 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_220 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_221 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_222 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_223 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_224 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_225 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_219 integer ;
   struct __anonstruct_string_220 string ;
   struct __anonstruct_buffer_221 buffer ;
   struct __anonstruct_package_222 package ;
   struct __anonstruct_reference_223 reference ;
   struct __anonstruct_processor_224 processor ;
   struct __anonstruct_power_resource_225 power_resource ;
};
struct acpi_driver;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
   void (*notify_online)(struct acpi_device * ) ;
   bool enabled ;
   bool demand_offline ;
};
struct acpi_scan_handler {
   struct acpi_device_id const *ids ;
   struct list_head list_node ;
   bool (*match)(char * , struct acpi_device_id const ** ) ;
   int (*attach)(struct acpi_device * , struct acpi_device_id const * ) ;
   void (*detach)(struct acpi_device * ) ;
   void (*bind)(struct device * ) ;
   void (*unbind)(struct device * ) ;
   struct acpi_hotplug_profile hotplug ;
};
struct acpi_hotplug_context {
   struct acpi_device *self ;
   int (*notify)(struct acpi_device * , u32 ) ;
   void (*uevent)(struct acpi_device * , u32 ) ;
   void (*fixup)(struct acpi_device * ) ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * ) ;
   void (*notify)(struct acpi_device * , u32 ) ;
};
struct acpi_driver {
   char name[80U] ;
   char class[80U] ;
   struct acpi_device_id const *ids ;
   unsigned int flags ;
   struct acpi_device_ops ops ;
   struct device_driver drv ;
   struct module *owner ;
};
struct acpi_device_status {
   unsigned char present : 1 ;
   unsigned char enabled : 1 ;
   unsigned char show_in_ui : 1 ;
   unsigned char functional : 1 ;
   unsigned char battery_present : 1 ;
   unsigned int reserved : 27 ;
};
struct acpi_device_flags {
   unsigned char dynamic_status : 1 ;
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char match_driver : 1 ;
   unsigned char initialized : 1 ;
   unsigned char visited : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned int reserved : 23 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_pnp_type {
   unsigned char hardware_id : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char platform_id : 1 ;
   unsigned int reserved : 29 ;
};
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   struct acpi_pnp_type type ;
   acpi_bus_address bus_address ;
   char *unique_id ;
   struct list_head ids ;
   acpi_device_name device_name ;
   acpi_device_class device_class ;
   union acpi_object *str_obj ;
};
struct acpi_device_power_flags {
   unsigned char explicit_get : 1 ;
   unsigned char power_resources : 1 ;
   unsigned char inrush_current : 1 ;
   unsigned char power_removed : 1 ;
   unsigned char ignore_parent : 1 ;
   unsigned char dsw_present : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_flags_226 {
   unsigned char valid : 1 ;
   unsigned char os_accessible : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_226 flags ;
   int power ;
   int latency ;
   struct list_head resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_227 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_227 flags ;
   u8 power ;
   u8 performance ;
   int latency ;
};
struct acpi_device_perf {
   int state ;
   struct acpi_device_perf_flags flags ;
   int state_count ;
   struct acpi_device_perf_state *states ;
};
struct acpi_device_wakeup_flags {
   unsigned char valid : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char notifier_present : 1 ;
   unsigned char enabled : 1 ;
};
struct acpi_device_wakeup_context {
   struct work_struct work ;
   struct device *dev ;
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct list_head resources ;
   struct acpi_device_wakeup_flags flags ;
   struct acpi_device_wakeup_context context ;
   struct wakeup_source *ws ;
   int prepare_count ;
};
struct acpi_device_data {
   union acpi_object const *pointer ;
   union acpi_object const *properties ;
   union acpi_object const *of_compatible ;
};
struct acpi_gpio_mapping;
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
   struct fwnode_handle fwnode ;
   struct acpi_device *parent ;
   struct list_head children ;
   struct list_head node ;
   struct list_head wakeup_list ;
   struct list_head del_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_device_data data ;
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   struct acpi_gpio_mapping const *driver_gpios ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   unsigned int dep_unmet ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
};
struct acpi_gpio_params {
   unsigned int crs_entry_index ;
   unsigned int line_index ;
   bool active_low ;
};
struct acpi_gpio_mapping {
   char const *name ;
   struct acpi_gpio_params const *data ;
   unsigned int size ;
};
struct ipmi_user;
typedef struct ipmi_user *ipmi_user_t;
struct ipmi_recv_msg {
   struct list_head link ;
   int recv_type ;
   ipmi_user_t user ;
   struct ipmi_addr addr ;
   long msgid ;
   struct kernel_ipmi_msg msg ;
   void *user_msg_data ;
   void (*done)(struct ipmi_recv_msg * ) ;
   unsigned char msg_data[272U] ;
};
struct ipmi_user_hndl {
   void (*ipmi_recv_hndl)(struct ipmi_recv_msg * , void * ) ;
   void (*ipmi_watchdog_pretimeout)(void * ) ;
};
struct ipmi_smi_watcher {
   struct list_head link ;
   struct module *owner ;
   void (*new_smi)(int , struct device * ) ;
   void (*smi_gone)(int ) ;
};
enum ipmi_addr_src {
    SI_INVALID = 0,
    SI_HOTMOD = 1,
    SI_HARDCODED = 2,
    SI_SPMI = 3,
    SI_ACPI = 4,
    SI_SMBIOS = 5,
    SI_PCI = 6,
    SI_DEVICETREE = 7,
    SI_DEFAULT = 8
} ;
struct __anonstruct_acpi_info_228 {
   acpi_handle acpi_handle ;
};
union ipmi_smi_info_union {
   struct __anonstruct_acpi_info_228 acpi_info ;
};
struct ipmi_smi_info {
   enum ipmi_addr_src addr_src ;
   struct device *dev ;
   union ipmi_smi_info_union addr_info ;
};
struct ipmi_smi;
typedef struct ipmi_smi *ipmi_smi_t;
struct ipmi_smi_msg {
   struct list_head link ;
   long msgid ;
   void *user_data ;
   int data_size ;
   unsigned char data[272U] ;
   int rsp_size ;
   unsigned char rsp[272U] ;
   void (*done)(struct ipmi_smi_msg * ) ;
};
struct ipmi_smi_handlers {
   struct module *owner ;
   int (*start_processing)(void * , ipmi_smi_t ) ;
   int (*get_smi_info)(void * , struct ipmi_smi_info * ) ;
   void (*sender)(void * , struct ipmi_smi_msg * ) ;
   void (*request_events)(void * ) ;
   void (*set_need_watch)(void * , bool ) ;
   void (*set_run_to_completion)(void * , bool ) ;
   void (*poll)(void * ) ;
   void (*set_maintenance_mode)(void * , bool ) ;
   int (*inc_usecount)(void * ) ;
   void (*dec_usecount)(void * ) ;
};
struct ipmi_device_id {
   unsigned char device_id ;
   unsigned char device_revision ;
   unsigned char firmware_revision_1 ;
   unsigned char firmware_revision_2 ;
   unsigned char ipmi_version ;
   unsigned char additional_device_support ;
   unsigned int manufacturer_id ;
   unsigned int product_id ;
   unsigned char aux_firmware_revision[4U] ;
   unsigned char aux_firmware_revision_set : 1 ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct ipmi_user {
   struct list_head link ;
   bool valid ;
   struct kref refcount ;
   struct ipmi_user_hndl *handler ;
   void *handler_data ;
   ipmi_smi_t intf ;
   bool gets_events ;
};
struct cmd_rcvr {
   struct list_head link ;
   ipmi_user_t user ;
   unsigned char netfn ;
   unsigned char cmd ;
   unsigned int chans ;
   struct cmd_rcvr *next ;
};
struct seq_table {
   unsigned char inuse : 1 ;
   unsigned char broadcast : 1 ;
   unsigned long timeout ;
   unsigned long orig_timeout ;
   unsigned int retries_left ;
   long seqid ;
   struct ipmi_recv_msg *recv_msg ;
};
struct ipmi_channel {
   unsigned char medium ;
   unsigned char protocol ;
   unsigned char address ;
   unsigned char lun ;
};
struct ipmi_proc_entry {
   char *name ;
   struct ipmi_proc_entry *next ;
};
struct bmc_device {
   struct platform_device pdev ;
   struct ipmi_device_id id ;
   unsigned char guid[16U] ;
   int guid_set ;
   char name[16U] ;
   struct kref usecount ;
};
struct ipmi_smi {
   int intf_num ;
   struct kref refcount ;
   bool in_shutdown ;
   struct list_head link ;
   struct list_head users ;
   unsigned char ipmi_version_major ;
   unsigned char ipmi_version_minor ;
   wait_queue_head_t waitq ;
   struct bmc_device *bmc ;
   char *my_dev_name ;
   struct ipmi_smi_handlers *handlers ;
   void *send_info ;
   struct mutex proc_entry_lock ;
   struct ipmi_proc_entry *proc_entries ;
   struct device *si_dev ;
   spinlock_t seq_lock ;
   struct seq_table seq_table[64U] ;
   int curr_seq ;
   spinlock_t waiting_rcv_msgs_lock ;
   struct list_head waiting_rcv_msgs ;
   atomic_t watchdog_pretimeouts_to_deliver ;
   struct tasklet_struct recv_tasklet ;
   spinlock_t xmit_msgs_lock ;
   struct list_head xmit_msgs ;
   struct ipmi_smi_msg *curr_msg ;
   struct list_head hp_xmit_msgs ;
   struct mutex cmd_rcvrs_mutex ;
   struct list_head cmd_rcvrs ;
   spinlock_t events_lock ;
   struct list_head waiting_events ;
   unsigned int waiting_events_count ;
   char delivering_events ;
   char event_msg_printed ;
   atomic_t event_waiters ;
   unsigned int ticks_to_req_ev ;
   int last_needs_timer ;
   unsigned char event_receiver ;
   unsigned char event_receiver_lun ;
   unsigned char local_sel_device ;
   unsigned char local_event_generator ;
   int maintenance_mode ;
   bool maintenance_mode_enable ;
   int auto_maintenance_timeout ;
   spinlock_t maintenance_mode_lock ;
   void (*null_user_handler)(ipmi_smi_t , struct ipmi_recv_msg * ) ;
   int curr_channel ;
   struct ipmi_channel channels[16U] ;
   struct proc_dir_entry *proc_dir ;
   char proc_dir_name[10U] ;
   atomic_t stats[28U] ;
   int run_to_completion ;
};
struct watcher_entry {
   int intf_num ;
   ipmi_smi_t intf ;
   struct list_head link ;
};
struct prod_dev_id {
   unsigned int product_id ;
   unsigned char device_id ;
};
struct ldv_struct_EMGentry_20 {
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_14 {
   struct notifier_block *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_15 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
struct request;
struct device_private {
   void *driver_data ;
};
typedef short s16;
typedef u64 dma_addr_t;
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   struct kthread_worker *worker ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_chan;
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool (*can_dma)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool idling ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   bool cur_msg_mapped ;
   struct completion xfer_completion ;
   size_t max_dma_len ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
   struct dma_chan *dma_tx ;
   struct dma_chan *dma_rx ;
   void *dummy_rx ;
   void *dummy_tx ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   struct sg_table tx_sg ;
   struct sg_table rx_sg ;
   unsigned char cs_change : 1 ;
   unsigned char tx_nbits : 3 ;
   unsigned char rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
typedef unsigned int mmc_pm_flag_t;
struct mmc_card;
struct sdio_func;
typedef void sdio_irq_handler_t(struct sdio_func * );
struct sdio_func_tuple {
   struct sdio_func_tuple *next ;
   unsigned char code ;
   unsigned char size ;
   unsigned char data[0U] ;
};
struct sdio_func {
   struct mmc_card *card ;
   struct device dev ;
   sdio_irq_handler_t *irq_handler ;
   unsigned int num ;
   unsigned char class ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned int max_blksize ;
   unsigned int cur_blksize ;
   unsigned int enable_timeout ;
   unsigned int state ;
   u8 tmpbuf[4U] ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct fault_attr {
   unsigned long probability ;
   unsigned long interval ;
   atomic_t times ;
   atomic_t space ;
   unsigned long verbose ;
   u32 task_filter ;
   unsigned long stacktrace_depth ;
   unsigned long require_start ;
   unsigned long require_end ;
   unsigned long reject_start ;
   unsigned long reject_end ;
   unsigned long count ;
   struct ratelimit_state ratelimit_state ;
   struct dentry *dname ;
};
struct mmc_data;
struct mmc_request;
struct mmc_command {
   u32 opcode ;
   u32 arg ;
   u32 resp[4U] ;
   unsigned int flags ;
   unsigned int retries ;
   unsigned int error ;
   unsigned int busy_timeout ;
   bool sanitize_busy ;
   struct mmc_data *data ;
   struct mmc_request *mrq ;
};
struct mmc_data {
   unsigned int timeout_ns ;
   unsigned int timeout_clks ;
   unsigned int blksz ;
   unsigned int blocks ;
   unsigned int error ;
   unsigned int flags ;
   unsigned int bytes_xfered ;
   struct mmc_command *stop ;
   struct mmc_request *mrq ;
   unsigned int sg_len ;
   struct scatterlist *sg ;
   s32 host_cookie ;
};
struct mmc_host;
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
   struct mmc_host *host ;
};
struct mmc_async_req;
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
   unsigned char prv ;
   unsigned int serial ;
   unsigned short oemid ;
   unsigned short year ;
   unsigned char hwrev ;
   unsigned char fwrev ;
   unsigned char month ;
};
struct mmc_csd {
   unsigned char structure ;
   unsigned char mmca_vsn ;
   unsigned short cmdclass ;
   unsigned short tacc_clks ;
   unsigned int tacc_ns ;
   unsigned int c_size ;
   unsigned int r2w_factor ;
   unsigned int max_dtr ;
   unsigned int erase_size ;
   unsigned int read_blkbits ;
   unsigned int write_blkbits ;
   unsigned int capacity ;
   unsigned char read_partial : 1 ;
   unsigned char read_misalign : 1 ;
   unsigned char write_partial : 1 ;
   unsigned char write_misalign : 1 ;
   unsigned char dsr_imp : 1 ;
};
struct mmc_ext_csd {
   u8 rev ;
   u8 erase_group_def ;
   u8 sec_feature_support ;
   u8 rel_sectors ;
   u8 rel_param ;
   u8 part_config ;
   u8 cache_ctrl ;
   u8 rst_n_function ;
   u8 max_packed_writes ;
   u8 max_packed_reads ;
   u8 packed_event_en ;
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int hs200_max_dtr ;
   unsigned int sectors ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool partition_setting_completed ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool man_bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   bool ffu_capable ;
   u8 fwrev[8U] ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_pwr_cl_52_195 ;
   u8 raw_pwr_cl_26_195 ;
   u8 raw_pwr_cl_52_360 ;
   u8 raw_pwr_cl_26_360 ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
   u8 raw_pwr_cl_200_195 ;
   u8 raw_pwr_cl_200_360 ;
   u8 raw_pwr_cl_ddr_52_195 ;
   u8 raw_pwr_cl_ddr_52_360 ;
   u8 raw_pwr_cl_ddr_200_360 ;
   u8 raw_bkops_status ;
   u8 raw_sectors[4U] ;
   unsigned int feature_support ;
};
struct sd_scr {
   unsigned char sda_vsn ;
   unsigned char sda_spec3 ;
   unsigned char bus_widths ;
   unsigned char cmds ;
};
struct sd_ssr {
   unsigned int au ;
   unsigned int erase_timeout ;
   unsigned int erase_offset ;
};
struct sd_switch_caps {
   unsigned int hs_max_dtr ;
   unsigned int uhs_max_dtr ;
   unsigned int sd3_bus_mode ;
   unsigned int sd3_drv_type ;
   unsigned int sd3_curr_limit ;
};
struct sdio_cccr {
   unsigned int sdio_vsn ;
   unsigned int sd_vsn ;
   unsigned char multi_block : 1 ;
   unsigned char low_speed : 1 ;
   unsigned char wide_bus : 1 ;
   unsigned char high_power : 1 ;
   unsigned char high_speed : 1 ;
   unsigned char disable_cd : 1 ;
};
struct sdio_cis {
   unsigned short vendor ;
   unsigned short device ;
   unsigned short blksize ;
   unsigned int max_dtr ;
};
struct mmc_ios;
struct mmc_part {
   unsigned int size ;
   unsigned int part_cfg ;
   char name[20U] ;
   bool force_ro ;
   unsigned int area_type ;
};
struct mmc_card {
   struct mmc_host *host ;
   struct device dev ;
   u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   u32 raw_cid[4U] ;
   u32 raw_csd[4U] ;
   u32 raw_scr[2U] ;
   struct mmc_cid cid ;
   struct mmc_csd csd ;
   struct mmc_ext_csd ext_csd ;
   struct sd_scr scr ;
   struct sd_ssr ssr ;
   struct sd_switch_caps sw_caps ;
   unsigned int sdio_funcs ;
   struct sdio_cccr cccr ;
   struct sdio_cis cis ;
   struct sdio_func *sdio_func[7U] ;
   struct sdio_func *sdio_single_irq ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
   unsigned int sd_bus_speed ;
   unsigned int mmc_avail_type ;
   struct dentry *debugfs_root ;
   struct mmc_part part[7U] ;
   unsigned int nr_parts ;
};
struct mmc_ios {
   unsigned int clock ;
   unsigned short vdd ;
   unsigned char bus_mode ;
   unsigned char chip_select ;
   unsigned char power_mode ;
   unsigned char bus_width ;
   unsigned char timing ;
   unsigned char signal_voltage ;
   unsigned char drv_type ;
};
struct mmc_host_ops {
   int (*enable)(struct mmc_host * ) ;
   int (*disable)(struct mmc_host * ) ;
   void (*post_req)(struct mmc_host * , struct mmc_request * , int ) ;
   void (*pre_req)(struct mmc_host * , struct mmc_request * , bool ) ;
   void (*request)(struct mmc_host * , struct mmc_request * ) ;
   void (*set_ios)(struct mmc_host * , struct mmc_ios * ) ;
   int (*get_ro)(struct mmc_host * ) ;
   int (*get_cd)(struct mmc_host * ) ;
   void (*enable_sdio_irq)(struct mmc_host * , int ) ;
   void (*init_card)(struct mmc_host * , struct mmc_card * ) ;
   int (*start_signal_voltage_switch)(struct mmc_host * , struct mmc_ios * ) ;
   int (*card_busy)(struct mmc_host * ) ;
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   int (*prepare_hs400_tuning)(struct mmc_host * , struct mmc_ios * ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
   int (*multi_io_quirk)(struct mmc_card * , unsigned int , int ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   void *handler_priv ;
};
struct mmc_context_info {
   bool is_done_rcv ;
   bool is_new_req ;
   bool is_waiting_last_req ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
};
struct regulator;
struct mmc_pwrseq;
struct mmc_supply {
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
};
struct mmc_bus_ops;
struct mmc_host {
   struct device *parent ;
   struct device class_dev ;
   int index ;
   struct mmc_host_ops const *ops ;
   struct mmc_pwrseq *pwrseq ;
   unsigned int f_min ;
   unsigned int f_max ;
   unsigned int f_init ;
   u32 ocr_avail ;
   u32 ocr_avail_sdio ;
   u32 ocr_avail_sd ;
   u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   u32 max_current_330 ;
   u32 max_current_300 ;
   u32 max_current_180 ;
   u32 caps ;
   u32 caps2 ;
   mmc_pm_flag_t pm_caps ;
   int clk_requests ;
   unsigned int clk_delay ;
   bool clk_gated ;
   struct delayed_work clk_gate_work ;
   unsigned int clk_old ;
   spinlock_t clk_lock ;
   struct mutex clk_gate_mutex ;
   struct device_attribute clkgate_delay_attr ;
   unsigned long clkgate_delay ;
   unsigned int max_seg_size ;
   unsigned short max_segs ;
   unsigned short unused ;
   unsigned int max_req_size ;
   unsigned int max_blk_size ;
   unsigned int max_blk_count ;
   unsigned int max_busy_timeout ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
   bool trigger_card_event ;
   struct mmc_card *card ;
   wait_queue_head_t wq ;
   struct task_struct *claimer ;
   int claim_cnt ;
   struct delayed_work detect ;
   int detect_change ;
   struct mmc_slot slot ;
   struct mmc_bus_ops const *bus_ops ;
   unsigned int bus_refs ;
   unsigned int sdio_irqs ;
   struct task_struct *sdio_irq_thread ;
   bool sdio_irq_pending ;
   atomic_t sdio_irq_thread_abort ;
   mmc_pm_flag_t pm_flags ;
   struct led_trigger *led ;
   bool regulator_enabled ;
   struct mmc_supply supply ;
   struct dentry *debugfs_root ;
   struct mmc_async_req *areq ;
   struct mmc_context_info context_info ;
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned int slotno ;
   int dsr_req ;
   u32 dsr ;
   unsigned long private[0U] ;
};
typedef int ldv_map;
struct usb_device;
struct urb;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void *is_got ) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_urb_check_final_state(void) ;
void ldv_check_alloc_nonatomic(void)
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_nonatomic();
  ldv_linux_alloc_usb_lock_check_alloc_nonatomic();
  }
  return;
}
}
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return;
}
}
void ldv_check_for_read_section(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_check_for_read_section();
  ldv_linux_kernel_rcu_srcu_check_for_read_section();
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_create_class(void)
{
  void *res1 ;
  void *tmp ;
  void *res2 ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_create_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_create_class(res1);
  res2 = tmp___0;
  ldv_assume((unsigned long )res1 == (unsigned long )res2);
  }
  return (res1);
}
}
int ldv_register_class(void)
{
  int res1 ;
  int tmp ;
  int res2 ;
  int tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_register_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_register_class();
  res2 = tmp___0;
  ldv_assume(res1 == res2);
  }
  return (res1);
}
}
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_203(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_200(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_201(void) ;
static void ldv_ldv_check_final_state_202(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void ldv_after_alloc(void * ) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void) ;
int ldv_linux_kernel_module_try_module_get(struct module *module ) ;
void ldv_linux_kernel_module_module_put(struct module *module ) ;
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_127(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_129(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_142(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_154(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_156(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_158(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_160(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_163(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_164(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_169(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_170(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_172(struct mutex *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ipmidriver_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_ipmidriver_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_proc_entry_lock_of_ipmi_smi(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_proc_entry_lock_of_ipmi_smi(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_lock_smi_watchers_mutex(struct mutex *lock ) ;
void ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(struct mutex *lock ) ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern struct atomic_notifier_head panic_notifier_list ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern char *kasprintf(gfp_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head, head->next);
  }
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{
  struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice_tail(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)list);
  }
  if (tmp == 0) {
    {
    __list_splice((struct list_head const *)list, head->prev, head);
    }
  } else {
  }
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern char *kstrdup(char const * , gfp_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void __cmpxchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_add(int i , atomic_t *v ) ;
__inline static void atomic_sub(int i , atomic_t *v ) ;
__inline static int atomic_sub_and_test(int i , atomic_t *v ) ;
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_add_return(int i , atomic_t *v ) ;
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{
  int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  {
  __old = old;
  __new = new;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __ptr = (u8 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgb %2,%1": "=a" (__ret),
                       "+m" (*__ptr): "q" (__new), "0" (__old): "memory");
  goto ldv_6334;
  case_2:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_6334;
  case_4:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_6334;
  case_8:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_6334;
  switch_default:
  {
  __cmpxchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_6334: ;
  return (__ret);
}
}
__inline static int __atomic_add_unless(atomic_t *v , int a , int u )
{
  int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  {
  c = atomic_read((atomic_t const *)v);
  }
  ldv_6363:
  {
  tmp = ldv__builtin_expect(c == u, 0L);
  }
  if (tmp != 0L) {
    goto ldv_6362;
  } else {
  }
  {
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  }
  if (tmp___0 != 0L) {
    goto ldv_6362;
  } else {
  }
  c = old;
  goto ldv_6363;
  ldv_6362: ;
  return (c);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{
  int tmp ;
  {
  {
  tmp = __atomic_add_unless(v, a, u);
  }
  return (tmp != u);
}
}
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_132(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_136(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_138(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_144(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_146(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_148(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_151(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_180(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_182(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_184(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_186(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_189(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_192(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_events_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_events_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_maintenance_mode_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_maintenance_mode_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_seq_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_waiting_rcv_msgs_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_waiting_rcv_msgs_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_xmit_msgs_lock_of_ipmi_smi(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_xmit_msgs_lock_of_ipmi_smi(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_128(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_143(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_155(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_157(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_159(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_161(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_162(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_165(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_166(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_167(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_168(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_171(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_174(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_175(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_137(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_137(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_145(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_137(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_179(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_179(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_145(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_179(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_145(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
static void ldv_synchronize_sched_35(void) ;
__inline static void synchronize_rcu(void)
{
  {
  {
  ldv_synchronize_sched_35();
  }
  return;
}
}
extern int debug_lockdep_rcu_enabled(void) ;
extern int rcu_read_lock_held(void) ;
__inline static void rcu_read_lock(void) ;
__inline static void rcu_read_unlock(void) ;
extern int sysfs_create_link(struct kobject * , struct kobject * , char const * ) ;
extern void sysfs_remove_link(struct kobject * , char const * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  {
  atomic_set(& kref->refcount, 1);
  }
  return;
}
}
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___0 != 0L) {
      {
      warn_slowpath_null("include/linux/kref.h", 47);
      }
    } else {
    }
    {
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  }
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/kref.h", 71);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  }
  if (tmp___0 != 0) {
    {
    (*release)(kref);
    }
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  {
  tmp = kref_sub(kref, 1U, release);
  }
  return (tmp);
}
}
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_194(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_195(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_196(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_199(struct timer_list *ldv_func_arg1 ) ;
__inline static bool seq_has_overflowed(struct seq_file *m )
{
  {
  return (m->count == m->size);
}
}
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern int atomic_notifier_chain_register(struct atomic_notifier_head * , struct notifier_block * ) ;
static int ldv_atomic_notifier_chain_register_197(struct atomic_notifier_head *ldv_func_arg1 ,
                                                  struct notifier_block *ldv_func_arg2 ) ;
extern int atomic_notifier_chain_unregister(struct atomic_notifier_head * , struct notifier_block * ) ;
static int ldv_atomic_notifier_chain_unregister_198(struct atomic_notifier_head *ldv_func_arg1 ,
                                                    struct notifier_block *ldv_func_arg2 ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern struct device *driver_find_device(struct device_driver * , struct device * ,
                                         void * , int (*)(struct device * , void * ) ) ;
__inline static struct device *kobj_to_dev(struct kobject *kobj )
{
  struct kobject const *__mptr ;
  {
  __mptr = (struct kobject const *)kobj;
  return ((struct device *)__mptr + 0xfffffffffffffff0UL);
}
}
extern void put_device(struct device * ) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int platform_device_register(struct platform_device * ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct bus_type platform_bus_type ;
__inline static void list_add_rcu(struct list_head *new , struct list_head *head ) ;
__inline static void list_add_rcu(struct list_head *new , struct list_head *head ) ;
__inline static void list_del_rcu(struct list_head *entry ) ;
__inline static void list_splice_init_rcu(struct list_head *list , struct list_head *head ,
                                          void (*sync)(void) ) ;
static bool ldv_try_module_get_107(struct module *ldv_func_arg1 ) ;
static bool ldv_try_module_get_116(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_108(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_117(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_130(struct module *ldv_func_arg1 ) ;
static void ldv_module_put_173(struct module *ldv_func_arg1 ) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
extern void *PDE_DATA(struct inode const * ) ;
extern void proc_remove(struct proc_dir_entry * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
void ipmi_free_recv_msg(struct ipmi_recv_msg *msg ) ;
int ipmi_create_user(unsigned int if_num , struct ipmi_user_hndl *handler , void *handler_data ,
                     ipmi_user_t **user ) ;
int ipmi_destroy_user(ipmi_user_t user ) ;
void ipmi_get_version(ipmi_user_t user , unsigned char *major , unsigned char *minor ) ;
int ipmi_set_my_address(ipmi_user_t user , unsigned int channel , unsigned char address ) ;
int ipmi_get_my_address(ipmi_user_t user , unsigned int channel , unsigned char *address ) ;
int ipmi_set_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char LUN ) ;
int ipmi_get_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char *address ) ;
int ipmi_request_settime(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                         struct kernel_ipmi_msg *msg , void *user_msg_data , int priority ,
                         int retries , unsigned int retry_time_ms ) ;
int ipmi_request_supply_msgs(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                             struct kernel_ipmi_msg *msg , void *user_msg_data , void *supplied_smi ,
                             struct ipmi_recv_msg *supplied_recv , int priority ) ;
void ipmi_poll_interface(ipmi_user_t user ) ;
int ipmi_register_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                          unsigned int chans ) ;
int ipmi_unregister_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                            unsigned int chans ) ;
int ipmi_get_maintenance_mode(ipmi_user_t user ) ;
int ipmi_set_maintenance_mode(ipmi_user_t user , int mode ) ;
int ipmi_set_gets_events(ipmi_user_t user , bool val ) ;
int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher ) ;
int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher ) ;
unsigned int ipmi_addr_length(int addr_type ) ;
int ipmi_validate_addr(struct ipmi_addr *addr , int len ) ;
char const *ipmi_addr_src_to_str(enum ipmi_addr_src src ) ;
int ipmi_get_smi_info(int if_num , struct ipmi_smi_info *data ) ;
int ipmi_register_smi(struct ipmi_smi_handlers *handlers , void *send_info , struct ipmi_device_id *device_id ,
                      struct device *si_dev , unsigned char slave_addr ) ;
int ipmi_unregister_smi(ipmi_smi_t intf ) ;
void ipmi_smi_msg_received(ipmi_smi_t intf , struct ipmi_smi_msg *msg ) ;
void ipmi_smi_watchdog_pretimeout(ipmi_smi_t intf ) ;
struct ipmi_smi_msg *ipmi_alloc_smi_msg(void) ;
__inline static void ipmi_free_smi_msg(struct ipmi_smi_msg *msg )
{
  {
  {
  (*(msg->done))(msg);
  }
  return;
}
}
int ipmi_smi_add_proc_entry(ipmi_smi_t smi , char *name , struct file_operations const *proc_ops ,
                            void *data ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  }
  if (tmp == 0) {
    {
    __tasklet_schedule(t);
    }
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void) ;
static int ipmi_init_msghandler(void) ;
static void smi_recv_tasklet(unsigned long val ) ;
static void handle_new_recv_msgs(ipmi_smi_t intf ) ;
static void need_waiter(ipmi_smi_t intf ) ;
static int handle_one_recv_msg(ipmi_smi_t intf , struct ipmi_smi_msg *msg ) ;
static int initialized ;
static struct proc_dir_entry *proc_ipmi_root ;
static struct platform_driver ipmidriver =
     {0, 0, 0, 0, 0, {"ipmi", & platform_bus_type, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0}, 0, (_Bool)0};
static struct mutex ipmidriver_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ipmidriver_mutex.wait_lock",
                                                           0, 0UL}}}}, {& ipmidriver_mutex.wait_list,
                                                                        & ipmidriver_mutex.wait_list},
    0, (void *)(& ipmidriver_mutex), {0, {0, 0}, "ipmidriver_mutex", 0, 0UL}};
static struct list_head ipmi_interfaces = {& ipmi_interfaces, & ipmi_interfaces};
static struct mutex ipmi_interfaces_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "ipmi_interfaces_mutex.wait_lock",
                                                           0, 0UL}}}}, {& ipmi_interfaces_mutex.wait_list,
                                                                        & ipmi_interfaces_mutex.wait_list},
    0, (void *)(& ipmi_interfaces_mutex), {0, {0, 0}, "ipmi_interfaces_mutex", 0,
                                           0UL}};
static struct list_head smi_watchers = {& smi_watchers, & smi_watchers};
static struct mutex smi_watchers_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "smi_watchers_mutex.wait_lock",
                                                           0, 0UL}}}}, {& smi_watchers_mutex.wait_list,
                                                                        & smi_watchers_mutex.wait_list},
    0, (void *)(& smi_watchers_mutex), {0, {0, 0}, "smi_watchers_mutex", 0, 0UL}};
static char *addr_src_to_str[9U] =
  { (char *)"invalid", (char *)"hotmod", (char *)"hardcoded", (char *)"SPMI",
        (char *)"ACPI", (char *)"SMBIOS", (char *)"PCI", (char *)"device-tree",
        (char *)"default"};
char const *ipmi_addr_src_to_str(enum ipmi_addr_src src )
{
  {
  if ((unsigned int )src > 8U) {
    src = 0;
  } else {
  }
  return ((char const *)addr_src_to_str[(unsigned int )src]);
}
}
static char const __kstrtab_ipmi_addr_src_to_str[21U] =
  { 'i', 'p', 'm', 'i',
        '_', 'a', 'd', 'd',
        'r', '_', 's', 'r',
        'c', '_', 't', 'o',
        '_', 's', 't', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_addr_src_to_str ;
struct kernel_symbol const __ksymtab_ipmi_addr_src_to_str = {(unsigned long )(& ipmi_addr_src_to_str), (char const *)(& __kstrtab_ipmi_addr_src_to_str)};
static int is_lan_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 4);
}
}
static int is_ipmb_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 1);
}
}
static int is_ipmb_bcast_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 65);
}
}
static void free_recv_msg_list(struct list_head *q )
{
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)q->next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  goto ldv_35931;
  ldv_35930:
  {
  list_del(& msg->link);
  ipmi_free_recv_msg(msg);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  }
  ldv_35931: ;
  if ((unsigned long )(& msg->link) != (unsigned long )q) {
    goto ldv_35930;
  } else {
  }
  return;
}
}
static void free_smi_msg_list(struct list_head *q )
{
  struct ipmi_smi_msg *msg ;
  struct ipmi_smi_msg *msg2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)q->next;
  msg = (struct ipmi_smi_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_smi_msg *)__mptr___0;
  goto ldv_35945;
  ldv_35944:
  {
  list_del(& msg->link);
  ipmi_free_smi_msg(msg);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_smi_msg *)__mptr___1;
  }
  ldv_35945: ;
  if ((unsigned long )(& msg->link) != (unsigned long )q) {
    goto ldv_35944;
  } else {
  }
  return;
}
}
static void clean_up_interface_data(ipmi_smi_t intf )
{
  int i ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvr2 ;
  struct list_head list ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  tasklet_kill(& intf->recv_tasklet);
  free_smi_msg_list(& intf->waiting_rcv_msgs);
  free_recv_msg_list(& intf->waiting_events);
  ldv_mutex_lock_97(& intf->cmd_rcvrs_mutex);
  INIT_LIST_HEAD(& list);
  list_splice_init_rcu(& intf->cmd_rcvrs, & list, & synchronize_rcu);
  ldv_mutex_unlock_98(& intf->cmd_rcvrs_mutex);
  __mptr = (struct list_head const *)list.next;
  rcvr = (struct cmd_rcvr *)__mptr;
  __mptr___0 = (struct list_head const *)rcvr->link.next;
  rcvr2 = (struct cmd_rcvr *)__mptr___0;
  }
  goto ldv_35961;
  ldv_35960:
  {
  kfree((void const *)rcvr);
  rcvr = rcvr2;
  __mptr___1 = (struct list_head const *)rcvr2->link.next;
  rcvr2 = (struct cmd_rcvr *)__mptr___1;
  }
  ldv_35961: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& list)) {
    goto ldv_35960;
  } else {
  }
  i = 0;
  goto ldv_35964;
  ldv_35963: ;
  if ((unsigned int )intf->seq_table[i].inuse != 0U && (unsigned long )intf->seq_table[i].recv_msg != (unsigned long )((struct ipmi_recv_msg *)0)) {
    {
    ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
    }
  } else {
  }
  i = i + 1;
  ldv_35964: ;
  if (i <= 63) {
    goto ldv_35963;
  } else {
  }
  return;
}
}
static void intf_free(struct kref *ref )
{
  ipmi_smi_t intf ;
  struct kref const *__mptr ;
  {
  {
  __mptr = (struct kref const *)ref;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffffcUL;
  clean_up_interface_data(intf);
  kfree((void const *)intf);
  }
  return;
}
}
int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher )
{
  ipmi_smi_t intf ;
  struct list_head to_deliver ;
  struct watcher_entry *e ;
  struct watcher_entry *e2 ;
  struct list_head const *__mptr ;
  void *tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  {
  to_deliver.next = & to_deliver;
  to_deliver.prev = & to_deliver;
  ldv_mutex_lock_99(& smi_watchers_mutex);
  ldv_mutex_lock_100(& ipmi_interfaces_mutex);
  __mptr = (struct list_head const *)ipmi_interfaces.next;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  }
  goto ldv_35990;
  ldv_35989: ;
  if (intf->intf_num == -1) {
    goto ldv_35987;
  } else {
  }
  {
  tmp = kmalloc(32UL, 208U);
  e = (struct watcher_entry *)tmp;
  }
  if ((unsigned long )e == (unsigned long )((struct watcher_entry *)0)) {
    goto out_err;
  } else {
  }
  {
  kref_get(& intf->refcount);
  e->intf = intf;
  e->intf_num = intf->intf_num;
  list_add_tail(& e->link, & to_deliver);
  }
  ldv_35987:
  __mptr___0 = (struct list_head const *)intf->link.next;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_35990: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_35989;
  } else {
  }
  {
  list_add(& watcher->link, & smi_watchers);
  ldv_mutex_unlock_101(& ipmi_interfaces_mutex);
  __mptr___1 = (struct list_head const *)to_deliver.next;
  e = (struct watcher_entry *)__mptr___1 + 0xfffffffffffffff0UL;
  __mptr___2 = (struct list_head const *)e->link.next;
  e2 = (struct watcher_entry *)__mptr___2 + 0xfffffffffffffff0UL;
  }
  goto ldv_35999;
  ldv_35998:
  {
  list_del(& e->link);
  (*(watcher->new_smi))(e->intf_num, (e->intf)->si_dev);
  kref_put(& (e->intf)->refcount, & intf_free);
  kfree((void const *)e);
  e = e2;
  __mptr___3 = (struct list_head const *)e2->link.next;
  e2 = (struct watcher_entry *)__mptr___3 + 0xfffffffffffffff0UL;
  }
  ldv_35999: ;
  if ((unsigned long )(& e->link) != (unsigned long )(& to_deliver)) {
    goto ldv_35998;
  } else {
  }
  {
  ldv_mutex_unlock_102(& smi_watchers_mutex);
  }
  return (0);
  out_err:
  {
  ldv_mutex_unlock_103(& ipmi_interfaces_mutex);
  ldv_mutex_unlock_104(& smi_watchers_mutex);
  __mptr___4 = (struct list_head const *)to_deliver.next;
  e = (struct watcher_entry *)__mptr___4 + 0xfffffffffffffff0UL;
  __mptr___5 = (struct list_head const *)e->link.next;
  e2 = (struct watcher_entry *)__mptr___5 + 0xfffffffffffffff0UL;
  }
  goto ldv_36008;
  ldv_36007:
  {
  list_del(& e->link);
  kref_put(& (e->intf)->refcount, & intf_free);
  kfree((void const *)e);
  e = e2;
  __mptr___6 = (struct list_head const *)e2->link.next;
  e2 = (struct watcher_entry *)__mptr___6 + 0xfffffffffffffff0UL;
  }
  ldv_36008: ;
  if ((unsigned long )(& e->link) != (unsigned long )(& to_deliver)) {
    goto ldv_36007;
  } else {
  }
  return (-12);
}
}
static char const __kstrtab_ipmi_smi_watcher_register[26U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'w', 'a', 't',
        'c', 'h', 'e', 'r',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_register ;
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_register = {(unsigned long )(& ipmi_smi_watcher_register), (char const *)(& __kstrtab_ipmi_smi_watcher_register)};
int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher )
{
  {
  {
  ldv_mutex_lock_105(& smi_watchers_mutex);
  list_del(& watcher->link);
  ldv_mutex_unlock_106(& smi_watchers_mutex);
  }
  return (0);
}
}
static char const __kstrtab_ipmi_smi_watcher_unregister[28U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'w', 'a', 't',
        'c', 'h', 'e', 'r',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_unregister ;
struct kernel_symbol const __ksymtab_ipmi_smi_watcher_unregister = {(unsigned long )(& ipmi_smi_watcher_unregister), (char const *)(& __kstrtab_ipmi_smi_watcher_unregister)};
static void call_smi_watchers(int i , struct device *dev )
{
  struct ipmi_smi_watcher *w ;
  struct list_head const *__mptr ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)smi_watchers.next;
  w = (struct ipmi_smi_watcher *)__mptr;
  goto ldv_36037;
  ldv_36036:
  {
  tmp = ldv_try_module_get_107(w->owner);
  }
  if ((int )tmp) {
    {
    (*(w->new_smi))(i, dev);
    ldv_module_put_108(w->owner);
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)w->link.next;
  w = (struct ipmi_smi_watcher *)__mptr___0;
  ldv_36037: ;
  if ((unsigned long )(& w->link) != (unsigned long )(& smi_watchers)) {
    goto ldv_36036;
  } else {
  }
  return;
}
}
static int ipmi_addr_equal(struct ipmi_addr *addr1 , struct ipmi_addr *addr2 )
{
  struct ipmi_system_interface_addr *smi_addr1 ;
  struct ipmi_system_interface_addr *smi_addr2 ;
  struct ipmi_ipmb_addr *ipmb_addr1 ;
  struct ipmi_ipmb_addr *ipmb_addr2 ;
  int tmp ;
  int tmp___0 ;
  struct ipmi_lan_addr *lan_addr1 ;
  struct ipmi_lan_addr *lan_addr2 ;
  int tmp___1 ;
  {
  if (addr1->addr_type != addr2->addr_type) {
    return (0);
  } else {
  }
  if ((int )addr1->channel != (int )addr2->channel) {
    return (0);
  } else {
  }
  if (addr1->addr_type == 12) {
    smi_addr1 = (struct ipmi_system_interface_addr *)addr1;
    smi_addr2 = (struct ipmi_system_interface_addr *)addr2;
    return ((int )smi_addr1->lun == (int )smi_addr2->lun);
  } else {
  }
  {
  tmp = is_ipmb_addr(addr1);
  }
  if (tmp != 0) {
    ipmb_addr1 = (struct ipmi_ipmb_addr *)addr1;
    ipmb_addr2 = (struct ipmi_ipmb_addr *)addr2;
    return ((int )*((unsigned short *)ipmb_addr1 + 3UL) == (int )*((unsigned short *)ipmb_addr2 + 3UL));
  } else {
    {
    tmp___0 = is_ipmb_bcast_addr(addr1);
    }
    if (tmp___0 != 0) {
      ipmb_addr1 = (struct ipmi_ipmb_addr *)addr1;
      ipmb_addr2 = (struct ipmi_ipmb_addr *)addr2;
      return ((int )*((unsigned short *)ipmb_addr1 + 3UL) == (int )*((unsigned short *)ipmb_addr2 + 3UL));
    } else {
    }
  }
  {
  tmp___1 = is_lan_addr(addr1);
  }
  if (tmp___1 != 0) {
    lan_addr1 = (struct ipmi_lan_addr *)addr1;
    lan_addr2 = (struct ipmi_lan_addr *)addr2;
    return (((int )*((unsigned short *)lan_addr1 + 4UL) == (int )*((unsigned short *)lan_addr2 + 4UL) && (int )lan_addr1->session_handle == (int )lan_addr2->session_handle) && (int )lan_addr1->lun == (int )lan_addr2->lun);
  } else {
  }
  return (1);
}
}
int ipmi_validate_addr(struct ipmi_addr *addr , int len )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )len <= 7U) {
    return (-22);
  } else {
  }
  if (addr->addr_type == 12) {
    if ((int )addr->channel != 15) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned int )((unsigned short )addr->channel) > 14U) {
    return (-22);
  } else {
  }
  {
  tmp = is_ipmb_addr(addr);
  }
  if (tmp != 0) {
    goto _L;
  } else {
    {
    tmp___0 = is_ipmb_bcast_addr(addr);
    }
    if (tmp___0 != 0) {
      _L:
      if ((unsigned int )len <= 7U) {
        return (-22);
      } else {
      }
      return (0);
    } else {
    }
  }
  {
  tmp___1 = is_lan_addr(addr);
  }
  if (tmp___1 != 0) {
    if ((unsigned int )len <= 11U) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  return (-22);
}
}
static char const __kstrtab_ipmi_validate_addr[19U] =
  { 'i', 'p', 'm', 'i',
        '_', 'v', 'a', 'l',
        'i', 'd', 'a', 't',
        'e', '_', 'a', 'd',
        'd', 'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_validate_addr ;
struct kernel_symbol const __ksymtab_ipmi_validate_addr = {(unsigned long )(& ipmi_validate_addr), (char const *)(& __kstrtab_ipmi_validate_addr)};
unsigned int ipmi_addr_length(int addr_type )
{
  {
  if (addr_type == 12) {
    return (8U);
  } else {
  }
  if (addr_type == 1 || addr_type == 65) {
    return (8U);
  } else {
  }
  if (addr_type == 4) {
    return (12U);
  } else {
  }
  return (0U);
}
}
static char const __kstrtab_ipmi_addr_length[17U] =
  { 'i', 'p', 'm', 'i',
        '_', 'a', 'd', 'd',
        'r', '_', 'l', 'e',
        'n', 'g', 't', 'h',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_addr_length ;
struct kernel_symbol const __ksymtab_ipmi_addr_length = {(unsigned long )(& ipmi_addr_length), (char const *)(& __kstrtab_ipmi_addr_length)};
static void deliver_response(struct ipmi_recv_msg *msg )
{
  ipmi_smi_t intf ;
  ipmi_user_t user ;
  {
  if ((unsigned long )msg->user == (unsigned long )((ipmi_user_t )0)) {
    intf = (ipmi_smi_t )msg->user_msg_data;
    if ((unsigned long )intf->null_user_handler != (unsigned long )((void (*)(ipmi_smi_t ,
                                                                              struct ipmi_recv_msg * ))0)) {
      {
      (*(intf->null_user_handler))(intf, msg);
      atomic_inc((atomic_t *)(& intf->stats) + 2UL);
      }
    } else {
      {
      atomic_inc((atomic_t *)(& intf->stats) + 3UL);
      }
    }
    {
    ipmi_free_recv_msg(msg);
    }
  } else {
    {
    user = msg->user;
    (*((user->handler)->ipmi_recv_hndl))(msg, user->handler_data);
    }
  }
  return;
}
}
static void deliver_err_response(struct ipmi_recv_msg *msg , int err )
{
  {
  {
  msg->recv_type = 1;
  msg->msg_data[0] = (unsigned char )err;
  msg->msg.netfn = (unsigned int )msg->msg.netfn | 1U;
  msg->msg.data_len = 1U;
  msg->msg.data = (unsigned char *)(& msg->msg_data);
  deliver_response(msg);
  }
  return;
}
}
static int intf_next_seq(ipmi_smi_t intf , struct ipmi_recv_msg *recv_msg , unsigned long timeout ,
                         int retries , int broadcast , unsigned char *seq , long *seqid )
{
  int rv ;
  unsigned int i ;
  {
  rv = 0;
  i = (unsigned int )intf->curr_seq;
  goto ldv_36093;
  ldv_36092: ;
  if ((unsigned int )intf->seq_table[i].inuse == 0U) {
    goto ldv_36091;
  } else {
  }
  i = (i + 1U) & 63U;
  ldv_36093: ;
  if (((i + 1U) & 63U) != (unsigned int )intf->curr_seq) {
    goto ldv_36092;
  } else {
  }
  ldv_36091: ;
  if ((unsigned int )intf->seq_table[i].inuse == 0U) {
    {
    intf->seq_table[i].recv_msg = recv_msg;
    intf->seq_table[i].timeout = 60000UL;
    intf->seq_table[i].orig_timeout = timeout;
    intf->seq_table[i].retries_left = (unsigned int )retries;
    intf->seq_table[i].broadcast = (unsigned char )broadcast;
    intf->seq_table[i].inuse = 1U;
    intf->seq_table[i].seqid = (intf->seq_table[i].seqid + 1L) & 4194303L;
    *seq = (unsigned char )i;
    *seqid = intf->seq_table[i].seqid;
    intf->curr_seq = (int )(i + 1U) & 63;
    need_waiter(intf);
    }
  } else {
    rv = -11;
  }
  return (rv);
}
}
static int intf_find_seq(ipmi_smi_t intf , unsigned char seq , short channel , unsigned char cmd ,
                         unsigned char netfn , struct ipmi_addr *addr , struct ipmi_recv_msg **recv_msg )
{
  int rv ;
  unsigned long flags ;
  struct ipmi_recv_msg *msg ;
  int tmp ;
  {
  rv = -19;
  if ((unsigned int )seq > 63U) {
    return (-22);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(& intf->seq_lock);
  }
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U) {
    msg = intf->seq_table[(int )seq].recv_msg;
    if (((int )msg->addr.channel == (int )channel && (int )msg->msg.cmd == (int )cmd) && (int )msg->msg.netfn == (int )netfn) {
      {
      tmp = ipmi_addr_equal(addr, & msg->addr);
      }
      if (tmp != 0) {
        *recv_msg = msg;
        intf->seq_table[(int )seq].inuse = 0U;
        rv = 0;
      } else {
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
  }
  return (rv);
}
}
static int intf_start_seq_timer(ipmi_smi_t intf , long msgid )
{
  int rv ;
  unsigned long flags ;
  unsigned char seq ;
  unsigned long seqid ;
  struct seq_table *ent ;
  {
  {
  rv = -19;
  seq = (unsigned int )((unsigned char )(msgid >> 26)) & 63U;
  seqid = (unsigned long )msgid & 4194303UL;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(& intf->seq_lock);
  }
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U && (unsigned long )intf->seq_table[(int )seq].seqid == seqid) {
    ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )seq;
    ent->timeout = ent->orig_timeout;
    rv = 0;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
  }
  return (rv);
}
}
static int intf_err_seq(ipmi_smi_t intf , long msgid , unsigned int err )
{
  int rv ;
  unsigned long flags ;
  unsigned char seq ;
  unsigned long seqid ;
  struct ipmi_recv_msg *msg ;
  struct seq_table *ent ;
  {
  {
  rv = -19;
  msg = (struct ipmi_recv_msg *)0;
  seq = (unsigned int )((unsigned char )(msgid >> 26)) & 63U;
  seqid = (unsigned long )msgid & 4194303UL;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113(& intf->seq_lock);
  }
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U && (unsigned long )intf->seq_table[(int )seq].seqid == seqid) {
    ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )seq;
    ent->inuse = 0U;
    msg = ent->recv_msg;
    rv = 0;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
  }
  if ((unsigned long )msg != (unsigned long )((struct ipmi_recv_msg *)0)) {
    {
    deliver_err_response(msg, (int )err);
    }
  } else {
  }
  return (rv);
}
}
int ipmi_create_user(unsigned int if_num , struct ipmi_user_hndl *handler , void *handler_data ,
                     ipmi_user_t **user )
{
  unsigned long flags ;
  ipmi_user_t new_user ;
  int rv ;
  ipmi_smi_t intf ;
  void *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  rv = 0;
  if ((unsigned long )handler == (unsigned long )((struct ipmi_user_hndl *)0)) {
    return (-22);
  } else {
  }
  if (initialized == 0) {
    {
    rv = ipmi_init_msghandler();
    }
    if (rv != 0) {
      return (rv);
    } else {
    }
    if (initialized == 0) {
      return (-19);
    } else {
    }
  } else {
  }
  {
  tmp = kmalloc(56UL, 208U);
  new_user = (ipmi_user_t )tmp;
  }
  if ((unsigned long )new_user == (unsigned long )((ipmi_user_t )0)) {
    return (-12);
  } else {
  }
  {
  ldv_mutex_lock_115(& ipmi_interfaces_mutex);
  __ptr = ipmi_interfaces.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_36160;
  ldv_36159: ;
  if ((unsigned int )intf->intf_num == if_num) {
    goto found;
  } else {
  }
  {
  __ptr___0 = intf->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_36160: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_36159;
  } else {
  }
  rv = -22;
  goto out_kfree;
  found:
  {
  kref_get(& intf->refcount);
  kref_init(& new_user->refcount);
  new_user->handler = handler;
  new_user->handler_data = handler_data;
  new_user->intf = intf;
  new_user->gets_events = 0;
  tmp___2 = ldv_try_module_get_116((intf->handlers)->owner);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    rv = -19;
    goto out_kref;
  } else {
  }
  if ((unsigned long )(intf->handlers)->inc_usecount != (unsigned long )((int (*)(void * ))0)) {
    {
    rv = (*((intf->handlers)->inc_usecount))(intf->send_info);
    }
    if (rv != 0) {
      {
      ldv_module_put_117((intf->handlers)->owner);
      }
      goto out_kref;
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_118(& ipmi_interfaces_mutex);
  new_user->valid = 1;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119(& intf->seq_lock);
  list_add_rcu(& new_user->link, & intf->users);
  ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
  }
  if ((unsigned long )handler->ipmi_watchdog_pretimeout != (unsigned long )((void (*)(void * ))0)) {
    {
    tmp___4 = atomic_add_return(1, & intf->event_waiters);
    }
    if (tmp___4 == 1) {
      {
      need_waiter(intf);
      }
    } else {
    }
  } else {
  }
  *user = new_user;
  return (0);
  out_kref:
  {
  kref_put(& intf->refcount, & intf_free);
  }
  out_kfree:
  {
  ldv_mutex_unlock_121(& ipmi_interfaces_mutex);
  kfree((void const *)new_user);
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_create_user[17U] =
  { 'i', 'p', 'm', 'i',
        '_', 'c', 'r', 'e',
        'a', 't', 'e', '_',
        'u', 's', 'e', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_create_user ;
struct kernel_symbol const __ksymtab_ipmi_create_user = {(unsigned long )(& ipmi_create_user), (char const *)(& __kstrtab_ipmi_create_user)};
int ipmi_get_smi_info(int if_num , struct ipmi_smi_info *data )
{
  int rv ;
  ipmi_smi_t intf ;
  struct ipmi_smi_handlers *handlers ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  {
  rv = 0;
  ldv_mutex_lock_122(& ipmi_interfaces_mutex);
  __ptr = ipmi_interfaces.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_36205;
  ldv_36204: ;
  if (intf->intf_num == if_num) {
    goto found;
  } else {
  }
  {
  __ptr___0 = intf->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_36205: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_36204;
  } else {
  }
  {
  rv = -22;
  ldv_mutex_unlock_123(& ipmi_interfaces_mutex);
  }
  return (rv);
  found:
  handlers = intf->handlers;
  rv = -38;
  if ((unsigned long )handlers->get_smi_info != (unsigned long )((int (*)(void * ,
                                                                          struct ipmi_smi_info * ))0)) {
    {
    rv = (*(handlers->get_smi_info))(intf->send_info, data);
    }
  } else {
  }
  {
  ldv_mutex_unlock_124(& ipmi_interfaces_mutex);
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_get_smi_info[18U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 's', 'm', 'i',
        '_', 'i', 'n', 'f',
        'o', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_smi_info ;
struct kernel_symbol const __ksymtab_ipmi_get_smi_info = {(unsigned long )(& ipmi_get_smi_info), (char const *)(& __kstrtab_ipmi_get_smi_info)};
static void free_user(struct kref *ref )
{
  ipmi_user_t user ;
  struct kref const *__mptr ;
  {
  {
  __mptr = (struct kref const *)ref;
  user = (struct ipmi_user *)__mptr + 0xffffffffffffffecUL;
  kfree((void const *)user);
  }
  return;
}
}
int ipmi_destroy_user(ipmi_user_t user )
{
  ipmi_smi_t intf ;
  int i ;
  unsigned long flags ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvrs ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  intf = user->intf;
  rcvrs = (struct cmd_rcvr *)0;
  user->valid = 0;
  if ((unsigned long )(user->handler)->ipmi_watchdog_pretimeout != (unsigned long )((void (*)(void * ))0)) {
    {
    atomic_dec(& intf->event_waiters);
    }
  } else {
  }
  if ((int )user->gets_events) {
    {
    atomic_dec(& intf->event_waiters);
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(& intf->seq_lock);
  list_del_rcu(& user->link);
  i = 0;
  }
  goto ldv_36230;
  ldv_36229: ;
  if ((unsigned int )intf->seq_table[i].inuse != 0U && (unsigned long )(intf->seq_table[i].recv_msg)->user == (unsigned long )user) {
    {
    intf->seq_table[i].inuse = 0U;
    ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
    }
  } else {
  }
  i = i + 1;
  ldv_36230: ;
  if (i <= 63) {
    goto ldv_36229;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
  ldv_mutex_lock_127(& intf->cmd_rcvrs_mutex);
  __ptr = intf->cmd_rcvrs.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_36255;
  ldv_36254: ;
  if ((unsigned long )rcvr->user == (unsigned long )user) {
    {
    list_del_rcu(& rcvr->link);
    rcvr->next = rcvrs;
    rcvrs = rcvr;
    }
  } else {
  }
  {
  __ptr___0 = rcvr->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_36255: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_36254;
  } else {
  }
  {
  ldv_mutex_unlock_128(& intf->cmd_rcvrs_mutex);
  synchronize_rcu();
  }
  goto ldv_36258;
  ldv_36257:
  {
  rcvr = rcvrs;
  rcvrs = rcvr->next;
  kfree((void const *)rcvr);
  }
  ldv_36258: ;
  if ((unsigned long )rcvrs != (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_36257;
  } else {
  }
  {
  ldv_mutex_lock_129(& ipmi_interfaces_mutex);
  }
  if ((unsigned long )intf->handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
    {
    ldv_module_put_130((intf->handlers)->owner);
    }
    if ((unsigned long )(intf->handlers)->dec_usecount != (unsigned long )((void (*)(void * ))0)) {
      {
      (*((intf->handlers)->dec_usecount))(intf->send_info);
      }
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_131(& ipmi_interfaces_mutex);
  kref_put(& intf->refcount, & intf_free);
  kref_put(& user->refcount, & free_user);
  }
  return (0);
}
}
static char const __kstrtab_ipmi_destroy_user[18U] =
  { 'i', 'p', 'm', 'i',
        '_', 'd', 'e', 's',
        't', 'r', 'o', 'y',
        '_', 'u', 's', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_ipmi_destroy_user ;
struct kernel_symbol const __ksymtab_ipmi_destroy_user = {(unsigned long )(& ipmi_destroy_user), (char const *)(& __kstrtab_ipmi_destroy_user)};
void ipmi_get_version(ipmi_user_t user , unsigned char *major , unsigned char *minor )
{
  {
  *major = (user->intf)->ipmi_version_major;
  *minor = (user->intf)->ipmi_version_minor;
  return;
}
}
static char const __kstrtab_ipmi_get_version[17U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'v', 'e', 'r',
        's', 'i', 'o', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_version ;
struct kernel_symbol const __ksymtab_ipmi_get_version = {(unsigned long )(& ipmi_get_version), (char const *)(& __kstrtab_ipmi_get_version)};
int ipmi_set_my_address(ipmi_user_t user , unsigned int channel , unsigned char address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  (user->intf)->channels[channel].address = address;
  return (0);
}
}
static char const __kstrtab_ipmi_set_my_address[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'm', 'y', '_',
        'a', 'd', 'd', 'r',
        'e', 's', 's', '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_my_address ;
struct kernel_symbol const __ksymtab_ipmi_set_my_address = {(unsigned long )(& ipmi_set_my_address), (char const *)(& __kstrtab_ipmi_set_my_address)};
int ipmi_get_my_address(ipmi_user_t user , unsigned int channel , unsigned char *address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  *address = (user->intf)->channels[channel].address;
  return (0);
}
}
static char const __kstrtab_ipmi_get_my_address[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'm', 'y', '_',
        'a', 'd', 'd', 'r',
        'e', 's', 's', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_my_address ;
struct kernel_symbol const __ksymtab_ipmi_get_my_address = {(unsigned long )(& ipmi_get_my_address), (char const *)(& __kstrtab_ipmi_get_my_address)};
int ipmi_set_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char LUN )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  (user->intf)->channels[channel].lun = (unsigned int )LUN & 3U;
  return (0);
}
}
static char const __kstrtab_ipmi_set_my_LUN[16U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'm', 'y', '_',
        'L', 'U', 'N', '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_my_LUN ;
struct kernel_symbol const __ksymtab_ipmi_set_my_LUN = {(unsigned long )(& ipmi_set_my_LUN), (char const *)(& __kstrtab_ipmi_set_my_LUN)};
int ipmi_get_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char *address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  *address = (user->intf)->channels[channel].lun;
  return (0);
}
}
static char const __kstrtab_ipmi_get_my_LUN[16U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'm', 'y', '_',
        'L', 'U', 'N', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_my_LUN ;
struct kernel_symbol const __ksymtab_ipmi_get_my_LUN = {(unsigned long )(& ipmi_get_my_LUN), (char const *)(& __kstrtab_ipmi_get_my_LUN)};
int ipmi_get_maintenance_mode(ipmi_user_t user )
{
  int mode ;
  unsigned long flags ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_132(& (user->intf)->maintenance_mode_lock);
  mode = (user->intf)->maintenance_mode;
  ldv_spin_unlock_irqrestore_133(& (user->intf)->maintenance_mode_lock, flags);
  }
  return (mode);
}
}
static char const __kstrtab_ipmi_get_maintenance_mode[26U] =
  { 'i', 'p', 'm', 'i',
        '_', 'g', 'e', 't',
        '_', 'm', 'a', 'i',
        'n', 't', 'e', 'n',
        'a', 'n', 'c', 'e',
        '_', 'm', 'o', 'd',
        'e', '\000'};
struct kernel_symbol const __ksymtab_ipmi_get_maintenance_mode ;
struct kernel_symbol const __ksymtab_ipmi_get_maintenance_mode = {(unsigned long )(& ipmi_get_maintenance_mode), (char const *)(& __kstrtab_ipmi_get_maintenance_mode)};
static void maintenance_mode_update(ipmi_smi_t intf )
{
  {
  if ((unsigned long )(intf->handlers)->set_maintenance_mode != (unsigned long )((void (*)(void * ,
                                                                                           bool ))0)) {
    {
    (*((intf->handlers)->set_maintenance_mode))(intf->send_info, (int )intf->maintenance_mode_enable);
    }
  } else {
  }
  return;
}
}
int ipmi_set_maintenance_mode(ipmi_user_t user , int mode )
{
  int rv ;
  unsigned long flags ;
  ipmi_smi_t intf ;
  {
  {
  rv = 0;
  intf = user->intf;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(& intf->maintenance_mode_lock);
  }
  if (intf->maintenance_mode != mode) {
    {
    if (mode == 0) {
      goto case_0;
    } else {
    }
    if (mode == 1) {
      goto case_1;
    } else {
    }
    if (mode == 2) {
      goto case_2;
    } else {
    }
    goto switch_default;
    case_0:
    intf->maintenance_mode_enable = intf->auto_maintenance_timeout > 0;
    goto ldv_36360;
    case_1:
    intf->maintenance_mode_enable = 0;
    goto ldv_36360;
    case_2:
    intf->maintenance_mode_enable = 1;
    goto ldv_36360;
    switch_default:
    rv = -22;
    goto out_unlock;
    switch_break: ;
    }
    ldv_36360:
    {
    intf->maintenance_mode = mode;
    maintenance_mode_update(intf);
    }
  } else {
  }
  out_unlock:
  {
  ldv_spin_unlock_irqrestore_133(& intf->maintenance_mode_lock, flags);
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_set_maintenance_mode[26U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'm', 'a', 'i',
        'n', 't', 'e', 'n',
        'a', 'n', 'c', 'e',
        '_', 'm', 'o', 'd',
        'e', '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_maintenance_mode ;
struct kernel_symbol const __ksymtab_ipmi_set_maintenance_mode = {(unsigned long )(& ipmi_set_maintenance_mode), (char const *)(& __kstrtab_ipmi_set_maintenance_mode)};
int ipmi_set_gets_events(ipmi_user_t user , bool val )
{
  unsigned long flags ;
  ipmi_smi_t intf ;
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  struct list_head msgs ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  int tmp___0 ;
  {
  {
  intf = user->intf;
  INIT_LIST_HEAD(& msgs);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_136(& intf->events_lock);
  }
  if ((int )user->gets_events == (int )val) {
    goto out;
  } else {
  }
  user->gets_events = val;
  if ((int )val) {
    {
    tmp = atomic_add_return(1, & intf->event_waiters);
    }
    if (tmp == 1) {
      {
      need_waiter(intf);
      }
    } else {
    }
  } else {
    {
    atomic_dec(& intf->event_waiters);
    }
  }
  if ((int )((signed char )intf->delivering_events) != 0) {
    goto out;
  } else {
  }
  goto ldv_36402;
  ldv_36401:
  __mptr = (struct list_head const *)intf->waiting_events.next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  goto ldv_36390;
  ldv_36389:
  {
  list_move_tail(& msg->link, & msgs);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  }
  ldv_36390: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& intf->waiting_events)) {
    goto ldv_36389;
  } else {
  }
  intf->waiting_events_count = 0U;
  if ((int )((signed char )intf->event_msg_printed) != 0) {
    {
    printk("\fIPMI message handler: Event queue no longer full\n");
    intf->event_msg_printed = 0;
    }
  } else {
  }
  {
  intf->delivering_events = 1;
  ldv_spin_unlock_irqrestore_137(& intf->events_lock, flags);
  __mptr___2 = (struct list_head const *)msgs.next;
  msg = (struct ipmi_recv_msg *)__mptr___2;
  __mptr___3 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___3;
  }
  goto ldv_36399;
  ldv_36398:
  {
  msg->user = user;
  kref_get(& user->refcount);
  deliver_response(msg);
  msg = msg2;
  __mptr___4 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___4;
  }
  ldv_36399: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& msgs)) {
    goto ldv_36398;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_138(& intf->events_lock);
  intf->delivering_events = 0;
  }
  ldv_36402: ;
  if ((int )user->gets_events) {
    {
    tmp___0 = list_empty((struct list_head const *)(& intf->waiting_events));
    }
    if (tmp___0 == 0) {
      goto ldv_36401;
    } else {
      goto ldv_36403;
    }
  } else {
  }
  ldv_36403: ;
  out:
  {
  ldv_spin_unlock_irqrestore_137(& intf->events_lock, flags);
  }
  return (0);
}
}
static char const __kstrtab_ipmi_set_gets_events[21U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'e', 't',
        '_', 'g', 'e', 't',
        's', '_', 'e', 'v',
        'e', 'n', 't', 's',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_set_gets_events ;
struct kernel_symbol const __ksymtab_ipmi_set_gets_events = {(unsigned long )(& ipmi_set_gets_events), (char const *)(& __kstrtab_ipmi_set_gets_events)};
static struct cmd_rcvr *find_cmd_rcvr(ipmi_smi_t intf , unsigned char netfn , unsigned char cmd ,
                                      unsigned char chan )
{
  struct cmd_rcvr *rcvr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  {
  __ptr = intf->cmd_rcvrs.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_36442;
  ldv_36441: ;
  if (((int )rcvr->netfn == (int )netfn && (int )rcvr->cmd == (int )cmd) && (rcvr->chans & (unsigned int )(1 << (int )chan)) != 0U) {
    return (rcvr);
  } else {
  }
  {
  __ptr___0 = rcvr->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_36442: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_36441;
  } else {
  }
  return ((struct cmd_rcvr *)0);
}
}
static int is_cmd_rcvr_exclusive(ipmi_smi_t intf , unsigned char netfn , unsigned char cmd ,
                                 unsigned int chans )
{
  struct cmd_rcvr *rcvr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  {
  __ptr = intf->cmd_rcvrs.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_36474;
  ldv_36473: ;
  if (((int )rcvr->netfn == (int )netfn && (int )rcvr->cmd == (int )cmd) && (rcvr->chans & chans) != 0U) {
    return (0);
  } else {
  }
  {
  __ptr___0 = rcvr->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_36474: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_36473;
  } else {
  }
  return (1);
}
}
int ipmi_register_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                          unsigned int chans )
{
  ipmi_smi_t intf ;
  struct cmd_rcvr *rcvr ;
  int rv ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  intf = user->intf;
  rv = 0;
  tmp = kmalloc(40UL, 208U);
  rcvr = (struct cmd_rcvr *)tmp;
  }
  if ((unsigned long )rcvr == (unsigned long )((struct cmd_rcvr *)0)) {
    return (-12);
  } else {
  }
  {
  rcvr->cmd = cmd;
  rcvr->netfn = netfn;
  rcvr->chans = chans;
  rcvr->user = user;
  ldv_mutex_lock_140(& intf->cmd_rcvrs_mutex);
  tmp___0 = is_cmd_rcvr_exclusive(intf, (int )netfn, (int )cmd, chans);
  }
  if (tmp___0 == 0) {
    rv = -16;
    goto out_unlock;
  } else {
  }
  {
  tmp___1 = atomic_add_return(1, & intf->event_waiters);
  }
  if (tmp___1 == 1) {
    {
    need_waiter(intf);
    }
  } else {
  }
  {
  list_add_rcu(& rcvr->link, & intf->cmd_rcvrs);
  }
  out_unlock:
  {
  ldv_mutex_unlock_141(& intf->cmd_rcvrs_mutex);
  }
  if (rv != 0) {
    {
    kfree((void const *)rcvr);
    }
  } else {
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_register_for_cmd[22U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'f', 'o',
        'r', '_', 'c', 'm',
        'd', '\000'};
struct kernel_symbol const __ksymtab_ipmi_register_for_cmd ;
struct kernel_symbol const __ksymtab_ipmi_register_for_cmd = {(unsigned long )(& ipmi_register_for_cmd), (char const *)(& __kstrtab_ipmi_register_for_cmd)};
int ipmi_unregister_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                            unsigned int chans )
{
  ipmi_smi_t intf ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvrs ;
  int i ;
  int rv ;
  {
  {
  intf = user->intf;
  rcvrs = (struct cmd_rcvr *)0;
  rv = -2;
  ldv_mutex_lock_142(& intf->cmd_rcvrs_mutex);
  i = 0;
  }
  goto ldv_36509;
  ldv_36508: ;
  if (((unsigned int )(1 << i) & chans) == 0U) {
    goto ldv_36507;
  } else {
  }
  {
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )((unsigned char )i));
  }
  if ((unsigned long )rcvr == (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_36507;
  } else {
  }
  if ((unsigned long )rcvr->user == (unsigned long )user) {
    rv = 0;
    rcvr->chans = rcvr->chans & ~ chans;
    if (rcvr->chans == 0U) {
      {
      list_del_rcu(& rcvr->link);
      rcvr->next = rcvrs;
      rcvrs = rcvr;
      }
    } else {
    }
  } else {
  }
  ldv_36507:
  i = i + 1;
  ldv_36509: ;
  if (i <= 15) {
    goto ldv_36508;
  } else {
  }
  {
  ldv_mutex_unlock_143(& intf->cmd_rcvrs_mutex);
  synchronize_rcu();
  }
  goto ldv_36512;
  ldv_36511:
  {
  atomic_dec(& intf->event_waiters);
  rcvr = rcvrs;
  rcvrs = rcvr->next;
  kfree((void const *)rcvr);
  }
  ldv_36512: ;
  if ((unsigned long )rcvrs != (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_36511;
  } else {
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_unregister_for_cmd[24U] =
  { 'i', 'p', 'm', 'i',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        'f', 'o', 'r', '_',
        'c', 'm', 'd', '\000'};
struct kernel_symbol const __ksymtab_ipmi_unregister_for_cmd ;
struct kernel_symbol const __ksymtab_ipmi_unregister_for_cmd = {(unsigned long )(& ipmi_unregister_for_cmd), (char const *)(& __kstrtab_ipmi_unregister_for_cmd)};
static unsigned char ipmb_checksum(unsigned char *data , int size )
{
  unsigned char csum ;
  {
  csum = 0U;
  goto ldv_36530;
  ldv_36529:
  csum = (int )csum + (int )*data;
  size = size - 1;
  data = data + 1;
  ldv_36530: ;
  if (size > 0) {
    goto ldv_36529;
  } else {
  }
  return (- ((int )csum));
}
}
__inline static void format_ipmb_msg(struct ipmi_smi_msg *smi_msg , struct kernel_ipmi_msg *msg ,
                                     struct ipmi_ipmb_addr *ipmb_addr , long msgid ,
                                     unsigned char ipmb_seq , int broadcast , unsigned char source_address ,
                                     unsigned char source_lun )
{
  int i ;
  {
  i = broadcast;
  smi_msg->data[0] = 24U;
  smi_msg->data[1] = 52U;
  smi_msg->data[2] = (unsigned char )ipmb_addr->channel;
  if (broadcast != 0) {
    smi_msg->data[3] = 0U;
  } else {
  }
  {
  smi_msg->data[i + 3] = ipmb_addr->slave_addr;
  smi_msg->data[i + 4] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )ipmb_addr->lun) & 3));
  smi_msg->data[i + 5] = ipmb_checksum((unsigned char *)(& smi_msg->data) + ((unsigned long )i + 3UL),
                                       2);
  smi_msg->data[i + 6] = source_address;
  smi_msg->data[i + 7] = (unsigned char )((int )((signed char )((int )ipmb_seq << 2)) | (int )((signed char )source_lun));
  smi_msg->data[i + 8] = msg->cmd;
  }
  if ((unsigned int )msg->data_len != 0U) {
    {
    memcpy((void *)(& smi_msg->data) + ((unsigned long )i + 9UL), (void const *)msg->data,
             (size_t )msg->data_len);
    }
  } else {
  }
  {
  smi_msg->data_size = (int )msg->data_len + 9;
  smi_msg->data[i + smi_msg->data_size] = ipmb_checksum((unsigned char *)(& smi_msg->data) + ((unsigned long )i + 6UL),
                                                        smi_msg->data_size + -6);
  smi_msg->data_size = smi_msg->data_size + (i + 1);
  smi_msg->msgid = msgid;
  }
  return;
}
}
__inline static void format_lan_msg(struct ipmi_smi_msg *smi_msg , struct kernel_ipmi_msg *msg ,
                                    struct ipmi_lan_addr *lan_addr , long msgid ,
                                    unsigned char ipmb_seq , unsigned char source_lun )
{
  {
  {
  smi_msg->data[0] = 24U;
  smi_msg->data[1] = 52U;
  smi_msg->data[2] = (unsigned char )lan_addr->channel;
  smi_msg->data[3] = lan_addr->session_handle;
  smi_msg->data[4] = lan_addr->remote_SWID;
  smi_msg->data[5] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )lan_addr->lun) & 3));
  smi_msg->data[6] = ipmb_checksum((unsigned char *)(& smi_msg->data) + 4UL, 2);
  smi_msg->data[7] = lan_addr->local_SWID;
  smi_msg->data[8] = (unsigned char )((int )((signed char )((int )ipmb_seq << 2)) | (int )((signed char )source_lun));
  smi_msg->data[9] = msg->cmd;
  }
  if ((unsigned int )msg->data_len != 0U) {
    {
    memcpy((void *)(& smi_msg->data) + 10U, (void const *)msg->data, (size_t )msg->data_len);
    }
  } else {
  }
  {
  smi_msg->data_size = (int )msg->data_len + 10;
  smi_msg->data[smi_msg->data_size] = ipmb_checksum((unsigned char *)(& smi_msg->data) + 7UL,
                                                    smi_msg->data_size + -7);
  smi_msg->data_size = smi_msg->data_size + 1;
  smi_msg->msgid = msgid;
  }
  return;
}
}
static struct ipmi_smi_msg *smi_add_send_msg(ipmi_smi_t intf , struct ipmi_smi_msg *smi_msg ,
                                             int priority )
{
  {
  if ((unsigned long )intf->curr_msg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    if (priority > 0) {
      {
      list_add_tail(& smi_msg->link, & intf->hp_xmit_msgs);
      }
    } else {
      {
      list_add_tail(& smi_msg->link, & intf->xmit_msgs);
      }
    }
    smi_msg = (struct ipmi_smi_msg *)0;
  } else {
    intf->curr_msg = smi_msg;
  }
  return (smi_msg);
}
}
static void smi_send(ipmi_smi_t intf , struct ipmi_smi_handlers *handlers , struct ipmi_smi_msg *smi_msg ,
                     int priority )
{
  int run_to_completion ;
  unsigned long flags ;
  {
  run_to_completion = intf->run_to_completion;
  if (run_to_completion != 0) {
    {
    smi_msg = smi_add_send_msg(intf, smi_msg, priority);
    }
  } else {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_144(& intf->xmit_msgs_lock);
    smi_msg = smi_add_send_msg(intf, smi_msg, priority);
    ldv_spin_unlock_irqrestore_145(& intf->xmit_msgs_lock, flags);
    }
  }
  if ((unsigned long )smi_msg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    {
    (*(handlers->sender))(intf->send_info, smi_msg);
    }
  } else {
  }
  return;
}
}
static int i_ipmi_request(ipmi_user_t user , ipmi_smi_t intf , struct ipmi_addr *addr ,
                          long msgid , struct kernel_ipmi_msg *msg , void *user_msg_data ,
                          void *supplied_smi , struct ipmi_recv_msg *supplied_recv ,
                          int priority , unsigned char source_address , unsigned char source_lun ,
                          int retries , unsigned int retry_time_ms )
{
  int rv ;
  struct ipmi_smi_msg *smi_msg ;
  struct ipmi_recv_msg *recv_msg ;
  unsigned long flags ;
  struct ipmi_system_interface_addr *smi_addr ;
  struct ipmi_ipmb_addr *ipmb_addr ;
  unsigned char ipmb_seq ;
  long seqid ;
  int broadcast ;
  struct ipmi_lan_addr *lan_addr ;
  unsigned char ipmb_seq___0 ;
  long seqid___0 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  rv = 0;
  if ((unsigned long )supplied_recv != (unsigned long )((struct ipmi_recv_msg *)0)) {
    recv_msg = supplied_recv;
  } else {
    {
    recv_msg = ipmi_alloc_recv_msg();
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      return (-12);
    } else {
    }
  }
  recv_msg->user_msg_data = user_msg_data;
  if ((unsigned long )supplied_smi != (unsigned long )((void *)0)) {
    smi_msg = (struct ipmi_smi_msg *)supplied_smi;
  } else {
    {
    smi_msg = ipmi_alloc_smi_msg();
    }
    if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
      {
      ipmi_free_recv_msg(recv_msg);
      }
      return (-12);
    } else {
    }
  }
  {
  rcu_read_lock();
  }
  if ((int )intf->in_shutdown) {
    rv = -19;
    goto out_err;
  } else {
  }
  recv_msg->user = user;
  if ((unsigned long )user != (unsigned long )((ipmi_user_t )0)) {
    {
    kref_get(& user->refcount);
    }
  } else {
  }
  recv_msg->msgid = msgid;
  recv_msg->msg = *msg;
  if (addr->addr_type == 12) {
    if ((int )msg->netfn & 1) {
      rv = -22;
      goto out_err;
    } else {
    }
    smi_addr = (struct ipmi_system_interface_addr *)addr;
    if ((unsigned int )smi_addr->lun > 3U) {
      {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -22;
      }
      goto out_err;
    } else {
    }
    {
    memcpy((void *)(& recv_msg->addr), (void const *)smi_addr, 8UL);
    }
    if ((unsigned int )msg->netfn == 6U && (unsigned int )msg->cmd - 51U <= 2U) {
      {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -22;
      }
      goto out_err;
    } else {
    }
    if (((unsigned int )msg->netfn == 6U && (unsigned int )msg->cmd - 2U <= 1U) || (unsigned int )msg->netfn == 8U) {
      {
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_146(& intf->maintenance_mode_lock);
      intf->auto_maintenance_timeout = 30000;
      }
      if (intf->maintenance_mode == 0 && ! intf->maintenance_mode_enable) {
        {
        intf->maintenance_mode_enable = 1;
        maintenance_mode_update(intf);
        }
      } else {
      }
      {
      ldv_spin_unlock_irqrestore_133(& intf->maintenance_mode_lock, flags);
      }
    } else {
    }
    if ((int )msg->data_len + 2 > 272) {
      {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -90;
      }
      goto out_err;
    } else {
    }
    smi_msg->data[0] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )smi_addr->lun) & 3));
    smi_msg->data[1] = msg->cmd;
    smi_msg->msgid = msgid;
    smi_msg->user_data = (void *)recv_msg;
    if ((unsigned int )msg->data_len != 0U) {
      {
      memcpy((void *)(& smi_msg->data) + 2U, (void const *)msg->data, (size_t )msg->data_len);
      }
    } else {
    }
    {
    smi_msg->data_size = (int )msg->data_len + 2;
    atomic_inc((atomic_t *)(& intf->stats) + 1UL);
    }
  } else {
    {
    tmp___0 = is_ipmb_addr(addr);
    }
    if (tmp___0 != 0) {
      goto _L;
    } else {
      {
      tmp___1 = is_ipmb_bcast_addr(addr);
      }
      if (tmp___1 != 0) {
        _L:
        broadcast = 0;
        if ((int )addr->channel > 15) {
          {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          }
          goto out_err;
        } else {
        }
        if ((unsigned int )intf->channels[(int )addr->channel].medium != 1U) {
          {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          }
          goto out_err;
        } else {
        }
        if (retries < 0) {
          if (addr->addr_type == 65) {
            retries = 0;
          } else {
            retries = 4;
          }
        } else {
        }
        if (addr->addr_type == 65) {
          addr->addr_type = 1;
          broadcast = 1;
        } else {
        }
        if (retry_time_ms == 0U) {
          retry_time_ms = 1000U;
        } else {
        }
        if (((int )msg->data_len + 10) + broadcast > 272) {
          {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -90;
          }
          goto out_err;
        } else {
        }
        ipmb_addr = (struct ipmi_ipmb_addr *)addr;
        if ((unsigned int )ipmb_addr->lun > 3U) {
          {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          }
          goto out_err;
        } else {
        }
        {
        memcpy((void *)(& recv_msg->addr), (void const *)ipmb_addr, 8UL);
        }
        if ((int )recv_msg->msg.netfn & 1) {
          {
          atomic_inc((atomic_t *)(& intf->stats) + 9UL);
          format_ipmb_msg(smi_msg, msg, ipmb_addr, msgid, (int )((unsigned char )msgid),
                          broadcast, (int )source_address, (int )source_lun);
          smi_msg->user_data = (void *)recv_msg;
          }
        } else {
          {
          ldv___ldv_linux_kernel_locking_spinlock_spin_lock_148(& intf->seq_lock);
          rv = intf_next_seq(intf, recv_msg, (unsigned long )retry_time_ms, retries,
                             broadcast, & ipmb_seq, & seqid);
          }
          if (rv != 0) {
            {
            ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
            }
            goto out_err;
          } else {
          }
          {
          atomic_inc((atomic_t *)(& intf->stats) + 4UL);
          format_ipmb_msg(smi_msg, msg, ipmb_addr, (long )((int )ipmb_seq << 26) | (seqid & 67108863L),
                          (int )ipmb_seq, broadcast, (int )source_address, (int )source_lun);
          memcpy((void *)(& recv_msg->msg_data), (void const *)(& smi_msg->data),
                   (size_t )smi_msg->data_size);
          recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
          recv_msg->msg.data_len = (unsigned short )smi_msg->data_size;
          ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
          }
        }
      } else {
        {
        tmp = is_lan_addr(addr);
        }
        if (tmp != 0) {
          if ((int )addr->channel > 15) {
            {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            }
            goto out_err;
          } else {
          }
          if ((unsigned int )intf->channels[(int )addr->channel].medium - 4U > 1U) {
            {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            }
            goto out_err;
          } else {
          }
          retries = 4;
          if (retry_time_ms == 0U) {
            retry_time_ms = 1000U;
          } else {
          }
          if ((int )msg->data_len + 12 > 272) {
            {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -90;
            }
            goto out_err;
          } else {
          }
          lan_addr = (struct ipmi_lan_addr *)addr;
          if ((unsigned int )lan_addr->lun > 3U) {
            {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            }
            goto out_err;
          } else {
          }
          {
          memcpy((void *)(& recv_msg->addr), (void const *)lan_addr, 12UL);
          }
          if ((int )recv_msg->msg.netfn & 1) {
            {
            atomic_inc((atomic_t *)(& intf->stats) + 17UL);
            format_lan_msg(smi_msg, msg, lan_addr, msgid, (int )((unsigned char )msgid),
                           (int )source_lun);
            smi_msg->user_data = (void *)recv_msg;
            }
          } else {
            {
            ldv___ldv_linux_kernel_locking_spinlock_spin_lock_151(& intf->seq_lock);
            rv = intf_next_seq(intf, recv_msg, (unsigned long )retry_time_ms, retries,
                               0, & ipmb_seq___0, & seqid___0);
            }
            if (rv != 0) {
              {
              ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
              }
              goto out_err;
            } else {
            }
            {
            atomic_inc((atomic_t *)(& intf->stats) + 13UL);
            format_lan_msg(smi_msg, msg, lan_addr, (long )((int )ipmb_seq___0 << 26) | (seqid___0 & 67108863L),
                           (int )ipmb_seq___0, (int )source_lun);
            memcpy((void *)(& recv_msg->msg_data), (void const *)(& smi_msg->data),
                     (size_t )smi_msg->data_size);
            recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
            recv_msg->msg.data_len = (unsigned short )smi_msg->data_size;
            ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
            }
          }
        } else {
          {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          }
          goto out_err;
        }
      }
    }
  }
  {
  smi_send(intf, intf->handlers, smi_msg, priority);
  rcu_read_unlock();
  }
  return (0);
  out_err:
  {
  rcu_read_unlock();
  ipmi_free_smi_msg(smi_msg);
  ipmi_free_recv_msg(recv_msg);
  }
  return (rv);
}
}
static int check_addr(ipmi_smi_t intf , struct ipmi_addr *addr , unsigned char *saddr ,
                      unsigned char *lun )
{
  {
  if ((int )addr->channel > 15) {
    return (-22);
  } else {
  }
  *lun = intf->channels[(int )addr->channel].lun;
  *saddr = intf->channels[(int )addr->channel].address;
  return (0);
}
}
int ipmi_request_settime(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                         struct kernel_ipmi_msg *msg , void *user_msg_data , int priority ,
                         int retries , unsigned int retry_time_ms )
{
  unsigned char saddr ;
  unsigned char lun ;
  int rv ;
  int tmp ;
  {
  saddr = 0U;
  lun = 0U;
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    return (-22);
  } else {
  }
  {
  rv = check_addr(user->intf, addr, & saddr, & lun);
  }
  if (rv != 0) {
    return (rv);
  } else {
  }
  {
  tmp = i_ipmi_request(user, user->intf, addr, msgid, msg, user_msg_data, (void *)0,
                       (struct ipmi_recv_msg *)0, priority, (int )saddr, (int )lun,
                       retries, retry_time_ms);
  }
  return (tmp);
}
}
static char const __kstrtab_ipmi_request_settime[21U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'q',
        'u', 'e', 's', 't',
        '_', 's', 'e', 't',
        't', 'i', 'm', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_request_settime ;
struct kernel_symbol const __ksymtab_ipmi_request_settime = {(unsigned long )(& ipmi_request_settime), (char const *)(& __kstrtab_ipmi_request_settime)};
int ipmi_request_supply_msgs(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                             struct kernel_ipmi_msg *msg , void *user_msg_data , void *supplied_smi ,
                             struct ipmi_recv_msg *supplied_recv , int priority )
{
  unsigned char saddr ;
  unsigned char lun ;
  int rv ;
  int tmp ;
  {
  saddr = 0U;
  lun = 0U;
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    return (-22);
  } else {
  }
  {
  rv = check_addr(user->intf, addr, & saddr, & lun);
  }
  if (rv != 0) {
    return (rv);
  } else {
  }
  {
  tmp = i_ipmi_request(user, user->intf, addr, msgid, msg, user_msg_data, supplied_smi,
                       supplied_recv, priority, (int )saddr, (int )lun, -1, 0U);
  }
  return (tmp);
}
}
static char const __kstrtab_ipmi_request_supply_msgs[25U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'q',
        'u', 'e', 's', 't',
        '_', 's', 'u', 'p',
        'p', 'l', 'y', '_',
        'm', 's', 'g', 's',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_request_supply_msgs ;
struct kernel_symbol const __ksymtab_ipmi_request_supply_msgs = {(unsigned long )(& ipmi_request_supply_msgs), (char const *)(& __kstrtab_ipmi_request_supply_msgs)};
static int smi_ipmb_proc_show(struct seq_file *m , void *v )
{
  ipmi_smi_t intf ;
  int i ;
  bool tmp ;
  {
  {
  intf = (ipmi_smi_t )m->private;
  seq_printf(m, "%x", (int )intf->channels[0].address);
  i = 1;
  }
  goto ldv_36659;
  ldv_36658:
  {
  seq_printf(m, " %x", (int )intf->channels[i].address);
  i = i + 1;
  }
  ldv_36659: ;
  if (i <= 15) {
    goto ldv_36658;
  } else {
  }
  {
  seq_putc(m, 10);
  tmp = seq_has_overflowed(m);
  }
  return ((int )tmp);
}
}
static int smi_ipmb_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_ipmb_proc_show, tmp);
  }
  return (tmp___0);
}
}
static struct file_operations const smi_ipmb_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & smi_ipmb_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int smi_version_proc_show(struct seq_file *m , void *v )
{
  ipmi_smi_t intf ;
  bool tmp ;
  {
  {
  intf = (ipmi_smi_t )m->private;
  seq_printf(m, "%u.%u\n", (int )(intf->bmc)->id.ipmi_version & 15, (int )(intf->bmc)->id.ipmi_version >> 4);
  tmp = seq_has_overflowed(m);
  }
  return ((int )tmp);
}
}
static int smi_version_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_version_proc_show, tmp);
  }
  return (tmp___0);
}
}
static struct file_operations const smi_version_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & smi_version_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int smi_stats_proc_show(struct seq_file *m , void *v )
{
  ipmi_smi_t intf ;
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
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  {
  intf = (ipmi_smi_t )m->private;
  tmp = atomic_read((atomic_t const *)(& intf->stats));
  seq_printf(m, "sent_invalid_commands:       %u\n", (unsigned int )tmp);
  tmp___0 = atomic_read((atomic_t const *)(& intf->stats) + 1U);
  seq_printf(m, "sent_local_commands:         %u\n", (unsigned int )tmp___0);
  tmp___1 = atomic_read((atomic_t const *)(& intf->stats) + 2U);
  seq_printf(m, "handled_local_responses:     %u\n", (unsigned int )tmp___1);
  tmp___2 = atomic_read((atomic_t const *)(& intf->stats) + 3U);
  seq_printf(m, "unhandled_local_responses:   %u\n", (unsigned int )tmp___2);
  tmp___3 = atomic_read((atomic_t const *)(& intf->stats) + 4U);
  seq_printf(m, "sent_ipmb_commands:          %u\n", (unsigned int )tmp___3);
  tmp___4 = atomic_read((atomic_t const *)(& intf->stats) + 5U);
  seq_printf(m, "sent_ipmb_command_errs:      %u\n", (unsigned int )tmp___4);
  tmp___5 = atomic_read((atomic_t const *)(& intf->stats) + 6U);
  seq_printf(m, "retransmitted_ipmb_commands: %u\n", (unsigned int )tmp___5);
  tmp___6 = atomic_read((atomic_t const *)(& intf->stats) + 7U);
  seq_printf(m, "timed_out_ipmb_commands:     %u\n", (unsigned int )tmp___6);
  tmp___7 = atomic_read((atomic_t const *)(& intf->stats) + 8U);
  seq_printf(m, "timed_out_ipmb_broadcasts:   %u\n", (unsigned int )tmp___7);
  tmp___8 = atomic_read((atomic_t const *)(& intf->stats) + 9U);
  seq_printf(m, "sent_ipmb_responses:         %u\n", (unsigned int )tmp___8);
  tmp___9 = atomic_read((atomic_t const *)(& intf->stats) + 10U);
  seq_printf(m, "handled_ipmb_responses:      %u\n", (unsigned int )tmp___9);
  tmp___10 = atomic_read((atomic_t const *)(& intf->stats) + 11U);
  seq_printf(m, "invalid_ipmb_responses:      %u\n", (unsigned int )tmp___10);
  tmp___11 = atomic_read((atomic_t const *)(& intf->stats) + 12U);
  seq_printf(m, "unhandled_ipmb_responses:    %u\n", (unsigned int )tmp___11);
  tmp___12 = atomic_read((atomic_t const *)(& intf->stats) + 13U);
  seq_printf(m, "sent_lan_commands:           %u\n", (unsigned int )tmp___12);
  tmp___13 = atomic_read((atomic_t const *)(& intf->stats) + 14U);
  seq_printf(m, "sent_lan_command_errs:       %u\n", (unsigned int )tmp___13);
  tmp___14 = atomic_read((atomic_t const *)(& intf->stats) + 15U);
  seq_printf(m, "retransmitted_lan_commands:  %u\n", (unsigned int )tmp___14);
  tmp___15 = atomic_read((atomic_t const *)(& intf->stats) + 16U);
  seq_printf(m, "timed_out_lan_commands:      %u\n", (unsigned int )tmp___15);
  tmp___16 = atomic_read((atomic_t const *)(& intf->stats) + 17U);
  seq_printf(m, "sent_lan_responses:          %u\n", (unsigned int )tmp___16);
  tmp___17 = atomic_read((atomic_t const *)(& intf->stats) + 18U);
  seq_printf(m, "handled_lan_responses:       %u\n", (unsigned int )tmp___17);
  tmp___18 = atomic_read((atomic_t const *)(& intf->stats) + 19U);
  seq_printf(m, "invalid_lan_responses:       %u\n", (unsigned int )tmp___18);
  tmp___19 = atomic_read((atomic_t const *)(& intf->stats) + 20U);
  seq_printf(m, "unhandled_lan_responses:     %u\n", (unsigned int )tmp___19);
  tmp___20 = atomic_read((atomic_t const *)(& intf->stats) + 21U);
  seq_printf(m, "handled_commands:            %u\n", (unsigned int )tmp___20);
  tmp___21 = atomic_read((atomic_t const *)(& intf->stats) + 22U);
  seq_printf(m, "invalid_commands:            %u\n", (unsigned int )tmp___21);
  tmp___22 = atomic_read((atomic_t const *)(& intf->stats) + 23U);
  seq_printf(m, "unhandled_commands:          %u\n", (unsigned int )tmp___22);
  tmp___23 = atomic_read((atomic_t const *)(& intf->stats) + 24U);
  seq_printf(m, "invalid_events:              %u\n", (unsigned int )tmp___23);
  tmp___24 = atomic_read((atomic_t const *)(& intf->stats) + 25U);
  seq_printf(m, "events:                      %u\n", (unsigned int )tmp___24);
  tmp___25 = atomic_read((atomic_t const *)(& intf->stats) + 27U);
  seq_printf(m, "failed rexmit LAN msgs:      %u\n", (unsigned int )tmp___25);
  tmp___26 = atomic_read((atomic_t const *)(& intf->stats) + 26U);
  seq_printf(m, "failed rexmit IPMB msgs:     %u\n", (unsigned int )tmp___26);
  }
  return (0);
}
}
static int smi_stats_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_stats_proc_show, tmp);
  }
  return (tmp___0);
}
}
static struct file_operations const smi_stats_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & smi_stats_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int ipmi_smi_add_proc_entry(ipmi_smi_t smi , char *name , struct file_operations const *proc_ops ,
                            void *data )
{
  int rv ;
  struct proc_dir_entry *file ;
  struct ipmi_proc_entry *entry ;
  void *tmp ;
  {
  {
  rv = 0;
  tmp = kmalloc(16UL, 208U);
  entry = (struct ipmi_proc_entry *)tmp;
  }
  if ((unsigned long )entry == (unsigned long )((struct ipmi_proc_entry *)0)) {
    return (-12);
  } else {
  }
  {
  entry->name = kstrdup((char const *)name, 208U);
  }
  if ((unsigned long )entry->name == (unsigned long )((char *)0)) {
    {
    kfree((void const *)entry);
    }
    return (-12);
  } else {
  }
  {
  file = proc_create_data((char const *)name, 0, smi->proc_dir, proc_ops, data);
  }
  if ((unsigned long )file == (unsigned long )((struct proc_dir_entry *)0)) {
    {
    kfree((void const *)entry->name);
    kfree((void const *)entry);
    rv = -12;
    }
  } else {
    {
    ldv_mutex_lock_154(& smi->proc_entry_lock);
    entry->next = smi->proc_entries;
    smi->proc_entries = entry;
    ldv_mutex_unlock_155(& smi->proc_entry_lock);
    }
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_smi_add_proc_entry[24U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'a', 'd', 'd',
        '_', 'p', 'r', 'o',
        'c', '_', 'e', 'n',
        't', 'r', 'y', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_add_proc_entry ;
struct kernel_symbol const __ksymtab_ipmi_smi_add_proc_entry = {(unsigned long )(& ipmi_smi_add_proc_entry), (char const *)(& __kstrtab_ipmi_smi_add_proc_entry)};
static int add_proc_entries(ipmi_smi_t smi , int num )
{
  int rv ;
  {
  {
  rv = 0;
  sprintf((char *)(& smi->proc_dir_name), "%d", num);
  smi->proc_dir = proc_mkdir((char const *)(& smi->proc_dir_name), proc_ipmi_root);
  }
  if ((unsigned long )smi->proc_dir == (unsigned long )((struct proc_dir_entry *)0)) {
    rv = -12;
  } else {
  }
  if (rv == 0) {
    {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"stats", & smi_stats_proc_ops, (void *)smi);
    }
  } else {
  }
  if (rv == 0) {
    {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"ipmb", & smi_ipmb_proc_ops, (void *)smi);
    }
  } else {
  }
  if (rv == 0) {
    {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"version", & smi_version_proc_ops, (void *)smi);
    }
  } else {
  }
  return (rv);
}
}
static void remove_proc_entries(ipmi_smi_t smi )
{
  struct ipmi_proc_entry *entry ;
  {
  {
  ldv_mutex_lock_156(& smi->proc_entry_lock);
  }
  goto ldv_36715;
  ldv_36714:
  {
  entry = smi->proc_entries;
  smi->proc_entries = entry->next;
  remove_proc_entry((char const *)entry->name, smi->proc_dir);
  kfree((void const *)entry->name);
  kfree((void const *)entry);
  }
  ldv_36715: ;
  if ((unsigned long )smi->proc_entries != (unsigned long )((struct ipmi_proc_entry *)0)) {
    goto ldv_36714;
  } else {
  }
  {
  ldv_mutex_unlock_157(& smi->proc_entry_lock);
  remove_proc_entry((char const *)(& smi->proc_dir_name), proc_ipmi_root);
  }
  return;
}
}
static int __find_bmc_guid(struct device *dev , void *data )
{
  unsigned char *id ;
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  id = (unsigned char *)data;
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = memcmp((void const *)(& bmc->guid), (void const *)id, 16UL);
  }
  return (tmp == 0);
}
}
static struct bmc_device *ipmi_find_bmc_guid(struct device_driver *drv , unsigned char *guid )
{
  struct device *dev ;
  struct device const *__mptr ;
  {
  {
  dev = driver_find_device(drv, (struct device *)0, (void *)guid, & __find_bmc_guid);
  }
  if ((unsigned long )dev != (unsigned long )((struct device *)0)) {
    __mptr = (struct device const *)dev;
    return ((struct bmc_device *)__mptr + 0xfffffffffffffff0UL);
  } else {
    return ((struct bmc_device *)0);
  }
}
}
static int __find_bmc_prod_dev_id(struct device *dev , void *data )
{
  struct prod_dev_id *id ;
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  {
  id = (struct prod_dev_id *)data;
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  return (bmc->id.product_id == id->product_id && (int )bmc->id.device_id == (int )id->device_id);
}
}
static struct bmc_device *ipmi_find_bmc_prod_dev_id(struct device_driver *drv , unsigned int product_id ,
                                                    unsigned char device_id )
{
  struct prod_dev_id id ;
  struct device *dev ;
  struct device const *__mptr ;
  {
  {
  id.product_id = product_id;
  id.device_id = device_id;
  dev = driver_find_device(drv, (struct device *)0, (void *)(& id), & __find_bmc_prod_dev_id);
  }
  if ((unsigned long )dev != (unsigned long )((struct device *)0)) {
    __mptr = (struct device const *)dev;
    return ((struct bmc_device *)__mptr + 0xfffffffffffffff0UL);
  } else {
    return ((struct bmc_device *)0);
  }
}
}
static ssize_t device_id_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "%u\n", (int )bmc->id.device_id);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_device_id = {{"device_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & device_id_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                   size_t ))0};
static ssize_t provides_device_sdrs_show(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "%u\n", (int )bmc->id.device_revision >> 7);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_provides_device_sdrs = {{"provides_device_sdrs", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}}}}, & provides_device_sdrs_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t revision_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "%u\n", (int )bmc->id.device_revision & 15);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_revision = {{"revision", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & revision_show, (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                                  size_t ))0};
static ssize_t firmware_revision_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "%u.%x\n", (int )bmc->id.firmware_revision_1, (int )bmc->id.firmware_revision_2);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_firmware_revision = {{"firmware_revision", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & firmware_revision_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                           char const * , size_t ))0};
static ssize_t ipmi_version_show(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "%u.%u\n", (int )bmc->id.ipmi_version & 15, (int )bmc->id.ipmi_version >> 4);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_ipmi_version = {{"ipmi_version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & ipmi_version_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                      char const * , size_t ))0};
static ssize_t add_dev_support_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "0x%02x\n", (int )bmc->id.additional_device_support);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_additional_device_support = {{"additional_device_support", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & add_dev_support_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t manufacturer_id_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 20UL, "0x%6.6x\n", bmc->id.manufacturer_id);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_manufacturer_id = {{"manufacturer_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & manufacturer_id_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                         char const * , size_t ))0};
static ssize_t product_id_show(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 10UL, "0x%4.4x\n", bmc->id.product_id);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_product_id = {{"product_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & product_id_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                    char const * , size_t ))0};
static ssize_t aux_firmware_rev_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 21UL, "0x%02x 0x%02x 0x%02x 0x%02x\n", (int )bmc->id.aux_firmware_revision[3],
                 (int )bmc->id.aux_firmware_revision[2], (int )bmc->id.aux_firmware_revision[1],
                 (int )bmc->id.aux_firmware_revision[0]);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_aux_firmware_revision = {{"aux_firmware_revision", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & aux_firmware_rev_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t guid_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  int tmp ;
  {
  {
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  tmp = snprintf(buf, 100UL, "%Lx%Lx\n", (long long )bmc->guid[0], (long long )bmc->guid[8]);
  }
  return ((ssize_t )tmp);
}
}
static struct device_attribute dev_attr_guid = {{"guid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & guid_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static struct attribute *bmc_dev_attrs[11U] =
  { & dev_attr_device_id.attr, & dev_attr_provides_device_sdrs.attr, & dev_attr_revision.attr, & dev_attr_firmware_revision.attr,
        & dev_attr_ipmi_version.attr, & dev_attr_additional_device_support.attr, & dev_attr_manufacturer_id.attr, & dev_attr_product_id.attr,
        & dev_attr_aux_firmware_revision.attr, & dev_attr_guid.attr, (struct attribute *)0};
static umode_t bmc_dev_attr_is_visible(struct kobject *kobj , struct attribute *attr ,
                                       int idx )
{
  struct device *dev ;
  struct device *tmp ;
  struct bmc_device *bmc ;
  struct device const *__mptr ;
  umode_t mode ;
  {
  {
  tmp = kobj_to_dev(kobj);
  dev = tmp;
  __mptr = (struct device const *)dev;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffff0UL;
  mode = attr->mode;
  }
  if ((unsigned long )attr == (unsigned long )(& dev_attr_aux_firmware_revision.attr)) {
    return ((unsigned int )*((unsigned char *)bmc + 1484UL) != 0U ? mode : 0U);
  } else {
  }
  if ((unsigned long )attr == (unsigned long )(& dev_attr_guid.attr)) {
    return (bmc->guid_set != 0 ? mode : 0U);
  } else {
  }
  return (mode);
}
}
static struct attribute_group bmc_dev_attr_group = {0, & bmc_dev_attr_is_visible, (struct attribute **)(& bmc_dev_attrs), 0};
static struct attribute_group const *bmc_dev_attr_groups[2U] = { (struct attribute_group const *)(& bmc_dev_attr_group), (struct attribute_group const *)0};
static struct device_type bmc_device_type = {0, (struct attribute_group const **)(& bmc_dev_attr_groups), 0, 0, 0, 0};
static void release_bmc_device(struct device *dev )
{
  struct device const *__mptr ;
  {
  {
  __mptr = (struct device const *)dev;
  kfree((void const *)((struct bmc_device *)__mptr + 0xfffffffffffffff0UL));
  }
  return;
}
}
static void cleanup_bmc_device(struct kref *ref )
{
  struct bmc_device *bmc ;
  struct kref const *__mptr ;
  {
  {
  __mptr = (struct kref const *)ref;
  bmc = (struct bmc_device *)__mptr + 0xfffffffffffffa0cUL;
  platform_device_unregister(& bmc->pdev);
  }
  return;
}
}
static void ipmi_bmc_unregister(ipmi_smi_t intf )
{
  struct bmc_device *bmc ;
  {
  {
  bmc = intf->bmc;
  sysfs_remove_link(& (intf->si_dev)->kobj, "bmc");
  }
  if ((unsigned long )intf->my_dev_name != (unsigned long )((char *)0)) {
    {
    sysfs_remove_link(& bmc->pdev.dev.kobj, (char const *)intf->my_dev_name);
    kfree((void const *)intf->my_dev_name);
    intf->my_dev_name = (char *)0;
    }
  } else {
  }
  {
  ldv_mutex_lock_158(& ipmidriver_mutex);
  kref_put(& bmc->usecount, & cleanup_bmc_device);
  intf->bmc = (struct bmc_device *)0;
  ldv_mutex_unlock_159(& ipmidriver_mutex);
  }
  return;
}
}
static int ipmi_bmc_register(ipmi_smi_t intf , int ifnum )
{
  int rv ;
  struct bmc_device *bmc ;
  struct bmc_device *old_bmc ;
  unsigned char orig_dev_id ;
  int warn_printed ;
  struct bmc_device *tmp ;
  {
  {
  bmc = intf->bmc;
  ldv_mutex_lock_160(& ipmidriver_mutex);
  }
  if (bmc->guid_set != 0) {
    {
    old_bmc = ipmi_find_bmc_guid(& ipmidriver.driver, (unsigned char *)(& bmc->guid));
    }
  } else {
    {
    old_bmc = ipmi_find_bmc_prod_dev_id(& ipmidriver.driver, bmc->id.product_id, (int )bmc->id.device_id);
    }
  }
  if ((unsigned long )old_bmc != (unsigned long )((struct bmc_device *)0)) {
    {
    kfree((void const *)bmc);
    intf->bmc = old_bmc;
    bmc = old_bmc;
    kref_get(& bmc->usecount);
    ldv_mutex_unlock_161(& ipmidriver_mutex);
    printk("\016ipmi: interfacing existing BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
           bmc->id.manufacturer_id, bmc->id.product_id, (int )bmc->id.device_id);
    }
  } else {
    {
    orig_dev_id = bmc->id.device_id;
    warn_printed = 0;
    snprintf((char *)(& bmc->name), 16UL, "ipmi_bmc.%4.4x", bmc->id.product_id);
    bmc->pdev.name = (char const *)(& bmc->name);
    }
    goto ldv_36982;
    ldv_36981: ;
    if (warn_printed == 0) {
      {
      printk("\fIPMI message handler: This machine has two different BMCs with the same product id and device id.  This is an error in the firmware, but incrementing the device id to work around the problem. Prod ID = 0x%x, Dev ID = 0x%x\n",
             bmc->id.product_id, (int )bmc->id.device_id);
      warn_printed = 1;
      }
    } else {
    }
    bmc->id.device_id = (unsigned char )((int )bmc->id.device_id + 1);
    if ((int )bmc->id.device_id == (int )orig_dev_id) {
      {
      printk("\vIPMI message handler: Out of device ids!\n");
      }
      goto ldv_36980;
    } else {
    }
    ldv_36982:
    {
    tmp = ipmi_find_bmc_prod_dev_id(& ipmidriver.driver, bmc->id.product_id, (int )bmc->id.device_id);
    }
    if ((unsigned long )tmp != (unsigned long )((struct bmc_device *)0)) {
      goto ldv_36981;
    } else {
    }
    ldv_36980:
    {
    bmc->pdev.dev.driver = & ipmidriver.driver;
    bmc->pdev.id = (int )bmc->id.device_id;
    bmc->pdev.dev.release = & release_bmc_device;
    bmc->pdev.dev.type = (struct device_type const *)(& bmc_device_type);
    kref_init(& bmc->usecount);
    rv = platform_device_register(& bmc->pdev);
    ldv_mutex_unlock_162(& ipmidriver_mutex);
    }
    if (rv != 0) {
      {
      put_device(& bmc->pdev.dev);
      printk("\vipmi_msghandler: Unable to register bmc device: %d\n", rv);
      }
      return (rv);
    } else {
    }
    {
    _dev_info((struct device const *)intf->si_dev, "Found new BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
              bmc->id.manufacturer_id, bmc->id.product_id, (int )bmc->id.device_id);
    }
  }
  {
  rv = sysfs_create_link(& (intf->si_dev)->kobj, & bmc->pdev.dev.kobj, "bmc");
  }
  if (rv != 0) {
    {
    printk("\vipmi_msghandler: Unable to create bmc symlink: %d\n", rv);
    }
    goto out_err;
  } else {
  }
  {
  intf->my_dev_name = kasprintf(208U, "ipmi%d", ifnum);
  }
  if ((unsigned long )intf->my_dev_name == (unsigned long )((char *)0)) {
    {
    rv = -12;
    printk("\vipmi_msghandler: allocate link from BMC: %d\n", rv);
    }
    goto out_err;
  } else {
  }
  {
  rv = sysfs_create_link(& bmc->pdev.dev.kobj, & (intf->si_dev)->kobj, (char const *)intf->my_dev_name);
  }
  if (rv != 0) {
    {
    kfree((void const *)intf->my_dev_name);
    intf->my_dev_name = (char *)0;
    printk("\vipmi_msghandler: Unable to create symlink to bmc: %d\n", rv);
    }
    goto out_err;
  } else {
  }
  return (0);
  out_err:
  {
  ipmi_bmc_unregister(intf);
  }
  return (rv);
}
}
static int send_guid_cmd(ipmi_smi_t intf , int chan )
{
  struct kernel_ipmi_msg msg ;
  struct ipmi_system_interface_addr si ;
  int tmp ;
  {
  {
  si.addr_type = 12;
  si.channel = 15;
  si.lun = 0U;
  msg.netfn = 6U;
  msg.cmd = 8U;
  msg.data = (unsigned char *)0U;
  msg.data_len = 0U;
  tmp = i_ipmi_request((ipmi_user_t )0, intf, (struct ipmi_addr *)(& si), 0L, & msg,
                       (void *)intf, (void *)0, (struct ipmi_recv_msg *)0, 0, (int )intf->channels[0].address,
                       (int )intf->channels[0].lun, -1, 0U);
  }
  return (tmp);
}
}
static void guid_handler(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if (msg->addr.addr_type != 12 || (unsigned int )*((unsigned short *)msg + 40UL) != 2055U) {
    return;
  } else {
  }
  if ((unsigned int )*(msg->msg.data) != 0U) {
    (intf->bmc)->guid_set = 0;
    goto out;
  } else {
  }
  if ((unsigned int )msg->msg.data_len <= 16U) {
    {
    (intf->bmc)->guid_set = 0;
    printk("\fIPMI message handler: guid_handler: The GUID response from the BMC was too short, it was %d but should have been 17.  Assuming GUID is not available.\n",
           (int )msg->msg.data_len);
    }
    goto out;
  } else {
  }
  {
  memcpy((void *)(& (intf->bmc)->guid), (void const *)msg->msg.data, 16UL);
  (intf->bmc)->guid_set = 1;
  }
  out:
  {
  __wake_up(& intf->waitq, 3U, 1, (void *)0);
  }
  return;
}
}
static void get_guid(ipmi_smi_t intf )
{
  int rv ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp ;
  {
  {
  (intf->bmc)->guid_set = 2;
  intf->null_user_handler = & guid_handler;
  rv = send_guid_cmd(intf, 0);
  }
  if (rv != 0) {
    (intf->bmc)->guid_set = 0;
  } else {
  }
  {
  __might_sleep("drivers/char/ipmi/ipmi_msghandler.c", 2642, 0);
  }
  if ((intf->bmc)->guid_set != 2) {
    goto ldv_36999;
  } else {
  }
  {
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  }
  ldv_37005:
  {
  tmp = prepare_to_wait_event(& intf->waitq, & __wait, 2);
  __int = tmp;
  }
  if ((intf->bmc)->guid_set != 2) {
    goto ldv_37004;
  } else {
  }
  {
  schedule();
  }
  goto ldv_37005;
  ldv_37004:
  {
  finish_wait(& intf->waitq, & __wait);
  }
  ldv_36999:
  intf->null_user_handler = (void (*)(ipmi_smi_t , struct ipmi_recv_msg * ))0;
  return;
}
}
static int send_channel_info_cmd(ipmi_smi_t intf , int chan )
{
  struct kernel_ipmi_msg msg ;
  unsigned char data[1U] ;
  struct ipmi_system_interface_addr si ;
  int tmp ;
  {
  {
  si.addr_type = 12;
  si.channel = 15;
  si.lun = 0U;
  msg.netfn = 6U;
  msg.cmd = 66U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 1U;
  data[0] = (unsigned char )chan;
  tmp = i_ipmi_request((ipmi_user_t )0, intf, (struct ipmi_addr *)(& si), 0L, & msg,
                       (void *)intf, (void *)0, (struct ipmi_recv_msg *)0, 0, (int )intf->channels[0].address,
                       (int )intf->channels[0].lun, -1, 0U);
  }
  return (tmp);
}
}
static void channel_handler(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  int rv ;
  int chan ;
  {
  rv = 0;
  if (msg->addr.addr_type == 12 && (unsigned int )*((unsigned short *)msg + 40UL) == 16903U) {
    if ((unsigned int )*(msg->msg.data) != 0U) {
      if ((unsigned int )*(msg->msg.data) == 193U) {
        {
        intf->channels[0].medium = 1U;
        intf->channels[0].protocol = 1U;
        intf->curr_channel = 16;
        __wake_up(& intf->waitq, 3U, 1, (void *)0);
        }
        goto out;
      } else {
      }
      goto next_channel;
    } else {
    }
    if ((unsigned int )msg->msg.data_len <= 3U) {
      goto next_channel;
    } else {
    }
    chan = intf->curr_channel;
    intf->channels[chan].medium = (unsigned int )*(msg->msg.data + 2UL) & 127U;
    intf->channels[chan].protocol = (unsigned int )*(msg->msg.data + 3UL) & 31U;
    next_channel:
    intf->curr_channel = intf->curr_channel + 1;
    if (intf->curr_channel > 15) {
      {
      __wake_up(& intf->waitq, 3U, 1, (void *)0);
      }
    } else {
      {
      rv = send_channel_info_cmd(intf, intf->curr_channel);
      }
    }
    if (rv != 0) {
      {
      printk("\fIPMI message handler: Error sending channel information for channel %d: %d\n",
             intf->curr_channel, rv);
      intf->curr_channel = 16;
      __wake_up(& intf->waitq, 3U, 1, (void *)0);
      }
    } else {
    }
  } else {
  }
  out: ;
  return;
}
}
static void ipmi_poll(ipmi_smi_t intf )
{
  {
  if ((unsigned long )(intf->handlers)->poll != (unsigned long )((void (*)(void * ))0)) {
    {
    (*((intf->handlers)->poll))(intf->send_info);
    }
  } else {
  }
  {
  handle_new_recv_msgs(intf);
  }
  return;
}
}
void ipmi_poll_interface(ipmi_user_t user )
{
  {
  {
  ipmi_poll(user->intf);
  }
  return;
}
}
static char const __kstrtab_ipmi_poll_interface[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 'p', 'o', 'l',
        'l', '_', 'i', 'n',
        't', 'e', 'r', 'f',
        'a', 'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_ipmi_poll_interface ;
struct kernel_symbol const __ksymtab_ipmi_poll_interface = {(unsigned long )(& ipmi_poll_interface), (char const *)(& __kstrtab_ipmi_poll_interface)};
int ipmi_register_smi(struct ipmi_smi_handlers *handlers , void *send_info , struct ipmi_device_id *device_id ,
                      struct device *si_dev , unsigned char slave_addr )
{
  int i ;
  int j ;
  int rv ;
  ipmi_smi_t intf ;
  ipmi_smi_t tintf ;
  struct list_head *link ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___3 ;
  {
  if (initialized == 0) {
    {
    rv = ipmi_init_msghandler();
    }
    if (rv != 0) {
      return (rv);
    } else {
    }
    if (initialized == 0) {
      return (-19);
    } else {
    }
  } else {
  }
  {
  tmp = kzalloc(4344UL, 208U);
  intf = (ipmi_smi_t )tmp;
  }
  if ((unsigned long )intf == (unsigned long )((ipmi_smi_t )0)) {
    return (-12);
  } else {
  }
  {
  intf->ipmi_version_major = (unsigned int )device_id->ipmi_version & 15U;
  intf->ipmi_version_minor = (int )device_id->ipmi_version >> 4;
  tmp___0 = kzalloc(1528UL, 208U);
  intf->bmc = (struct bmc_device *)tmp___0;
  }
  if ((unsigned long )intf->bmc == (unsigned long )((struct bmc_device *)0)) {
    {
    kfree((void const *)intf);
    }
    return (-12);
  } else {
  }
  {
  intf->intf_num = -1;
  kref_init(& intf->refcount);
  (intf->bmc)->id = *device_id;
  intf->si_dev = si_dev;
  j = 0;
  }
  goto ldv_37049;
  ldv_37048:
  intf->channels[j].address = 32U;
  intf->channels[j].lun = 2U;
  j = j + 1;
  ldv_37049: ;
  if (j <= 15) {
    goto ldv_37048;
  } else {
  }
  if ((unsigned int )slave_addr != 0U) {
    intf->channels[0].address = slave_addr;
  } else {
  }
  {
  INIT_LIST_HEAD(& intf->users);
  intf->handlers = handlers;
  intf->send_info = send_info;
  spinlock_check(& intf->seq_lock);
  __raw_spin_lock_init(& intf->seq_lock.__annonCompField18.rlock, "&(&intf->seq_lock)->rlock",
                       & __key);
  j = 0;
  }
  goto ldv_37053;
  ldv_37052:
  intf->seq_table[j].inuse = 0U;
  intf->seq_table[j].seqid = 0L;
  j = j + 1;
  ldv_37053: ;
  if (j <= 63) {
    goto ldv_37052;
  } else {
  }
  {
  intf->curr_seq = 0;
  __mutex_init(& intf->proc_entry_lock, "&intf->proc_entry_lock", & __key___0);
  spinlock_check(& intf->waiting_rcv_msgs_lock);
  __raw_spin_lock_init(& intf->waiting_rcv_msgs_lock.__annonCompField18.rlock, "&(&intf->waiting_rcv_msgs_lock)->rlock",
                       & __key___1);
  INIT_LIST_HEAD(& intf->waiting_rcv_msgs);
  tasklet_init(& intf->recv_tasklet, & smi_recv_tasklet, (unsigned long )intf);
  atomic_set(& intf->watchdog_pretimeouts_to_deliver, 0);
  spinlock_check(& intf->xmit_msgs_lock);
  __raw_spin_lock_init(& intf->xmit_msgs_lock.__annonCompField18.rlock, "&(&intf->xmit_msgs_lock)->rlock",
                       & __key___2);
  INIT_LIST_HEAD(& intf->xmit_msgs);
  INIT_LIST_HEAD(& intf->hp_xmit_msgs);
  spinlock_check(& intf->events_lock);
  __raw_spin_lock_init(& intf->events_lock.__annonCompField18.rlock, "&(&intf->events_lock)->rlock",
                       & __key___3);
  atomic_set(& intf->event_waiters, 0);
  intf->ticks_to_req_ev = 1U;
  INIT_LIST_HEAD(& intf->waiting_events);
  intf->waiting_events_count = 0U;
  __mutex_init(& intf->cmd_rcvrs_mutex, "&intf->cmd_rcvrs_mutex", & __key___4);
  spinlock_check(& intf->maintenance_mode_lock);
  __raw_spin_lock_init(& intf->maintenance_mode_lock.__annonCompField18.rlock, "&(&intf->maintenance_mode_lock)->rlock",
                       & __key___5);
  INIT_LIST_HEAD(& intf->cmd_rcvrs);
  __init_waitqueue_head(& intf->waitq, "&intf->waitq", & __key___6);
  i = 0;
  }
  goto ldv_37063;
  ldv_37062:
  {
  atomic_set((atomic_t *)(& intf->stats) + (unsigned long )i, 0);
  i = i + 1;
  }
  ldv_37063: ;
  if (i <= 27) {
    goto ldv_37062;
  } else {
  }
  {
  intf->proc_dir = (struct proc_dir_entry *)0;
  ldv_mutex_lock_163(& smi_watchers_mutex);
  ldv_mutex_lock_164(& ipmi_interfaces_mutex);
  i = 0;
  link = & ipmi_interfaces;
  __ptr = ipmi_interfaces.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  tintf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37089;
  ldv_37088: ;
  if (tintf->intf_num != i) {
    link = & tintf->link;
    goto ldv_37087;
  } else {
  }
  {
  i = i + 1;
  __ptr___0 = tintf->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___2 = debug_lockdep_rcu_enabled();
  }
  if (tmp___2 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  tintf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37089: ;
  if ((unsigned long )(& tintf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_37088;
  } else {
  }
  ldv_37087: ;
  if (i == 0) {
    {
    list_add_rcu(& intf->link, & ipmi_interfaces);
    }
  } else {
    {
    list_add_rcu(& intf->link, link);
    }
  }
  {
  rv = (*(handlers->start_processing))(send_info, intf);
  }
  if (rv != 0) {
    goto out;
  } else {
  }
  {
  get_guid(intf);
  }
  if ((unsigned int )intf->ipmi_version_major > 1U || ((unsigned int )intf->ipmi_version_major == 1U && (unsigned int )intf->ipmi_version_minor > 4U)) {
    {
    intf->null_user_handler = & channel_handler;
    intf->curr_channel = 0;
    rv = send_channel_info_cmd(intf, 0);
    }
    if (rv != 0) {
      {
      printk("\fIPMI message handler: Error sending channel information for channel 0, %d\n",
             rv);
      }
      goto out;
    } else {
    }
    {
    __might_sleep("drivers/char/ipmi/ipmi_msghandler.c", 2878, 0);
    }
    if (intf->curr_channel > 15) {
      goto ldv_37091;
    } else {
    }
    {
    __ret = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_37097:
    {
    tmp___3 = prepare_to_wait_event(& intf->waitq, & __wait, 2);
    __int = tmp___3;
    }
    if (intf->curr_channel > 15) {
      goto ldv_37096;
    } else {
    }
    {
    schedule();
    }
    goto ldv_37097;
    ldv_37096:
    {
    finish_wait(& intf->waitq, & __wait);
    }
    ldv_37091:
    intf->null_user_handler = (void (*)(ipmi_smi_t , struct ipmi_recv_msg * ))0;
  } else {
    intf->channels[0].medium = 1U;
    intf->channels[0].protocol = 1U;
    intf->curr_channel = 16;
  }
  if (rv == 0) {
    {
    rv = add_proc_entries(intf, i);
    }
  } else {
  }
  {
  rv = ipmi_bmc_register(intf, i);
  }
  out: ;
  if (rv != 0) {
    if ((unsigned long )intf->proc_dir != (unsigned long )((struct proc_dir_entry *)0)) {
      {
      remove_proc_entries(intf);
      }
    } else {
    }
    {
    intf->handlers = (struct ipmi_smi_handlers *)0;
    list_del_rcu(& intf->link);
    ldv_mutex_unlock_165(& ipmi_interfaces_mutex);
    ldv_mutex_unlock_166(& smi_watchers_mutex);
    synchronize_rcu();
    kref_put(& intf->refcount, & intf_free);
    }
  } else {
    {
    __asm__ volatile ("": : : "memory");
    intf->intf_num = i;
    ldv_mutex_unlock_167(& ipmi_interfaces_mutex);
    call_smi_watchers(i, intf->si_dev);
    ldv_mutex_unlock_168(& smi_watchers_mutex);
    }
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_register_smi[18U] =
  { 'i', 'p', 'm', 'i',
        '_', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 's', 'm',
        'i', '\000'};
struct kernel_symbol const __ksymtab_ipmi_register_smi ;
struct kernel_symbol const __ksymtab_ipmi_register_smi = {(unsigned long )(& ipmi_register_smi), (char const *)(& __kstrtab_ipmi_register_smi)};
static void deliver_smi_err_response(ipmi_smi_t intf , struct ipmi_smi_msg *msg ,
                                     unsigned char err )
{
  {
  {
  msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
  msg->rsp[1] = msg->data[1];
  msg->rsp[2] = err;
  msg->rsp_size = 3;
  handle_one_recv_msg(intf, msg);
  }
  return;
}
}
static void cleanup_smi_msgs(ipmi_smi_t intf )
{
  int i ;
  struct seq_table *ent ;
  struct ipmi_smi_msg *msg ;
  struct list_head *entry ;
  struct list_head tmplist ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  {
  INIT_LIST_HEAD(& tmplist);
  list_splice_tail(& intf->hp_xmit_msgs, & tmplist);
  list_splice_tail(& intf->xmit_msgs, & tmplist);
  }
  goto ldv_37124;
  ldv_37123:
  {
  schedule_timeout(1L);
  }
  ldv_37124: ;
  if ((unsigned long )intf->curr_msg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    {
    tmp = list_empty((struct list_head const *)(& intf->waiting_rcv_msgs));
    }
    if (tmp == 0) {
      goto ldv_37123;
    } else {
      goto ldv_37125;
    }
  } else {
  }
  ldv_37125: ;
  goto ldv_37129;
  ldv_37128:
  {
  entry = tmplist.next;
  list_del(entry);
  __mptr = (struct list_head const *)entry;
  msg = (struct ipmi_smi_msg *)__mptr;
  deliver_smi_err_response(intf, msg, 255);
  }
  ldv_37129:
  {
  tmp___0 = list_empty((struct list_head const *)(& tmplist));
  }
  if (tmp___0 == 0) {
    goto ldv_37128;
  } else {
  }
  i = 0;
  goto ldv_37133;
  ldv_37132:
  ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ent + 0UL) == 0U) {
    goto ldv_37131;
  } else {
  }
  {
  deliver_err_response(ent->recv_msg, 255);
  }
  ldv_37131:
  i = i + 1;
  ldv_37133: ;
  if (i <= 63) {
    goto ldv_37132;
  } else {
  }
  return;
}
}
int ipmi_unregister_smi(ipmi_smi_t intf )
{
  struct ipmi_smi_watcher *w ;
  int intf_num ;
  ipmi_user_t user ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  {
  intf_num = intf->intf_num;
  ipmi_bmc_unregister(intf);
  ldv_mutex_lock_169(& smi_watchers_mutex);
  ldv_mutex_lock_170(& ipmi_interfaces_mutex);
  intf->intf_num = -1;
  intf->in_shutdown = 1;
  list_del_rcu(& intf->link);
  ldv_mutex_unlock_171(& ipmi_interfaces_mutex);
  synchronize_rcu();
  cleanup_smi_msgs(intf);
  ldv_mutex_lock_172(& ipmi_interfaces_mutex);
  rcu_read_lock();
  __ptr = intf->users.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  user = (struct ipmi_user *)__mptr;
  goto ldv_37164;
  ldv_37163:
  {
  ldv_module_put_173((intf->handlers)->owner);
  }
  if ((unsigned long )(intf->handlers)->dec_usecount != (unsigned long )((void (*)(void * ))0)) {
    {
    (*((intf->handlers)->dec_usecount))(intf->send_info);
    }
  } else {
  }
  {
  __ptr___0 = user->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  user = (struct ipmi_user *)__mptr___0;
  ldv_37164: ;
  if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
    goto ldv_37163;
  } else {
  }
  {
  rcu_read_unlock();
  intf->handlers = (struct ipmi_smi_handlers *)0;
  ldv_mutex_unlock_174(& ipmi_interfaces_mutex);
  remove_proc_entries(intf);
  __mptr___1 = (struct list_head const *)smi_watchers.next;
  w = (struct ipmi_smi_watcher *)__mptr___1;
  }
  goto ldv_37171;
  ldv_37170:
  {
  (*(w->smi_gone))(intf_num);
  __mptr___2 = (struct list_head const *)w->link.next;
  w = (struct ipmi_smi_watcher *)__mptr___2;
  }
  ldv_37171: ;
  if ((unsigned long )(& w->link) != (unsigned long )(& smi_watchers)) {
    goto ldv_37170;
  } else {
  }
  {
  ldv_mutex_unlock_175(& smi_watchers_mutex);
  kref_put(& intf->refcount, & intf_free);
  }
  return (0);
}
}
static char const __kstrtab_ipmi_unregister_smi[20U] =
  { 'i', 'p', 'm', 'i',
        '_', 'u', 'n', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        's', 'm', 'i', '\000'};
struct kernel_symbol const __ksymtab_ipmi_unregister_smi ;
struct kernel_symbol const __ksymtab_ipmi_unregister_smi = {(unsigned long )(& ipmi_unregister_smi), (char const *)(& __kstrtab_ipmi_unregister_smi)};
static int handle_ipmb_get_msg_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_ipmb_addr ipmb_addr ;
  struct ipmi_recv_msg *recv_msg ;
  int tmp ;
  {
  if (msg->rsp_size <= 10) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 11UL);
    }
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  {
  ipmb_addr.addr_type = 1;
  ipmb_addr.slave_addr = msg->rsp[6];
  ipmb_addr.channel = (int )((short )msg->rsp[3]) & 15;
  ipmb_addr.lun = (unsigned int )msg->rsp[7] & 3U;
  tmp = intf_find_seq(intf, (int )msg->rsp[7] >> 2, (int )msg->rsp[3] & 15, (int )msg->rsp[8],
                      ((int )msg->rsp[4] >> 2) & 254, (struct ipmi_addr *)(& ipmb_addr),
                      & recv_msg);
  }
  if (tmp != 0) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 12UL);
    }
    return (0);
  } else {
  }
  {
  memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 9U, (size_t )(msg->rsp_size + -9));
  recv_msg->msg.netfn = (int )msg->rsp[4] >> 2;
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65526U;
  recv_msg->recv_type = 1;
  atomic_inc((atomic_t *)(& intf->stats) + 10UL);
  deliver_response(recv_msg);
  }
  return (0);
}
}
static int handle_ipmb_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_ipmb_addr *ipmb_addr ;
  struct ipmi_recv_msg *recv_msg ;
  {
  rv = 0;
  user = (ipmi_user_t )0;
  if (msg->rsp_size <= 9) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    }
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  {
  netfn = (int )msg->rsp[4] >> 2;
  cmd = msg->rsp[8];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  }
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    {
    user = rcvr->user;
    kref_get(& user->refcount);
    }
  } else {
    user = (ipmi_user_t )0;
  }
  {
  rcu_read_unlock();
  }
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    msg->data[0] = 24U;
    msg->data[1] = 52U;
    msg->data[2] = msg->rsp[3];
    msg->data[3] = msg->rsp[6];
    msg->data[4] = (unsigned char )((int )((signed char )(((int )netfn + 1) << 2)) | ((int )((signed char )msg->rsp[7]) & 3));
    msg->data[5] = ipmb_checksum((unsigned char *)(& msg->data) + 3UL, 2);
    msg->data[6] = intf->channels[(int )msg->rsp[3] & 15].address;
    msg->data[7] = (unsigned char )(((int )((signed char )msg->rsp[7]) & -4) | ((int )((signed char )msg->rsp[4]) & 3));
    msg->data[8] = msg->rsp[8];
    msg->data[9] = 193U;
    msg->data[10] = ipmb_checksum((unsigned char *)(& msg->data) + 6UL, 4);
    msg->data_size = 11;
    rcu_read_lock();
    }
    if (! intf->in_shutdown) {
      {
      smi_send(intf, intf->handlers, msg, 0);
      rv = -1;
      }
    } else {
    }
    {
    rcu_read_unlock();
    }
  } else {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      {
      rv = 1;
      kref_put(& user->refcount, & free_user);
      }
    } else {
      {
      ipmb_addr = (struct ipmi_ipmb_addr *)(& recv_msg->addr);
      ipmb_addr->addr_type = 1;
      ipmb_addr->slave_addr = msg->rsp[6];
      ipmb_addr->lun = (unsigned int )msg->rsp[7] & 3U;
      ipmb_addr->channel = (int )((short )msg->rsp[3]) & 15;
      recv_msg->user = user;
      recv_msg->recv_type = 3;
      recv_msg->msgid = (long )((int )msg->rsp[7] >> 2);
      recv_msg->msg.netfn = (int )msg->rsp[4] >> 2;
      recv_msg->msg.cmd = msg->rsp[8];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65526U;
      memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 9U,
               (size_t )(msg->rsp_size + -10));
      deliver_response(recv_msg);
      }
    }
  }
  return (rv);
}
}
static int handle_lan_get_msg_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_lan_addr lan_addr ;
  struct ipmi_recv_msg *recv_msg ;
  int tmp ;
  {
  if (msg->rsp_size <= 12) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 19UL);
    }
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  {
  lan_addr.addr_type = 4;
  lan_addr.session_handle = msg->rsp[4];
  lan_addr.remote_SWID = msg->rsp[8];
  lan_addr.local_SWID = msg->rsp[5];
  lan_addr.channel = (int )((short )msg->rsp[3]) & 15;
  lan_addr.privilege = (int )msg->rsp[3] >> 4;
  lan_addr.lun = (unsigned int )msg->rsp[9] & 3U;
  tmp = intf_find_seq(intf, (int )msg->rsp[9] >> 2, (int )msg->rsp[3] & 15, (int )msg->rsp[10],
                      ((int )msg->rsp[6] >> 2) & 254, (struct ipmi_addr *)(& lan_addr),
                      & recv_msg);
  }
  if (tmp != 0) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 20UL);
    }
    return (0);
  } else {
  }
  {
  memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 11U, (size_t )(msg->rsp_size + -11));
  recv_msg->msg.netfn = (int )msg->rsp[6] >> 2;
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65524U;
  recv_msg->recv_type = 1;
  atomic_inc((atomic_t *)(& intf->stats) + 18UL);
  deliver_response(recv_msg);
  }
  return (0);
}
}
static int handle_lan_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_lan_addr *lan_addr ;
  struct ipmi_recv_msg *recv_msg ;
  {
  rv = 0;
  user = (ipmi_user_t )0;
  if (msg->rsp_size <= 11) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    }
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  {
  netfn = (int )msg->rsp[6] >> 2;
  cmd = msg->rsp[10];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  }
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    {
    user = rcvr->user;
    kref_get(& user->refcount);
    }
  } else {
    user = (ipmi_user_t )0;
  }
  {
  rcu_read_unlock();
  }
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    rv = 0;
    }
  } else {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      {
      rv = 1;
      kref_put(& user->refcount, & free_user);
      }
    } else {
      {
      lan_addr = (struct ipmi_lan_addr *)(& recv_msg->addr);
      lan_addr->addr_type = 4;
      lan_addr->session_handle = msg->rsp[4];
      lan_addr->remote_SWID = msg->rsp[8];
      lan_addr->local_SWID = msg->rsp[5];
      lan_addr->lun = (unsigned int )msg->rsp[9] & 3U;
      lan_addr->channel = (int )((short )msg->rsp[3]) & 15;
      lan_addr->privilege = (int )msg->rsp[3] >> 4;
      recv_msg->user = user;
      recv_msg->recv_type = 3;
      recv_msg->msgid = (long )((int )msg->rsp[9] >> 2);
      recv_msg->msg.netfn = (int )msg->rsp[6] >> 2;
      recv_msg->msg.cmd = msg->rsp[10];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65524U;
      memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 11U,
               (size_t )(msg->rsp_size + -12));
      deliver_response(recv_msg);
      }
    }
  }
  return (rv);
}
}
static int handle_oem_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_system_interface_addr *smi_addr ;
  struct ipmi_recv_msg *recv_msg ;
  {
  rv = 0;
  user = (ipmi_user_t )0;
  if (msg->rsp_size <= 3) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    }
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  {
  netfn = (int )msg->rsp[0] >> 2;
  cmd = msg->rsp[1];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  }
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    {
    user = rcvr->user;
    kref_get(& user->refcount);
    }
  } else {
    user = (ipmi_user_t )0;
  }
  {
  rcu_read_unlock();
  }
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    rv = 0;
    }
  } else {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      {
      rv = 1;
      kref_put(& user->refcount, & free_user);
      }
    } else {
      {
      smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
      smi_addr->addr_type = 12;
      smi_addr->channel = 15;
      smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
      recv_msg->user = user;
      recv_msg->user_msg_data = (void *)0;
      recv_msg->recv_type = 5;
      recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
      recv_msg->msg.cmd = msg->rsp[1];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65532U;
      memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 4U,
               (size_t )(msg->rsp_size + -4));
      deliver_response(recv_msg);
      }
    }
  }
  return (rv);
}
}
static void copy_event_into_recv_msg(struct ipmi_recv_msg *recv_msg , struct ipmi_smi_msg *msg )
{
  struct ipmi_system_interface_addr *smi_addr ;
  {
  {
  recv_msg->msgid = 0L;
  smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
  smi_addr->addr_type = 12;
  smi_addr->channel = 15;
  smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
  recv_msg->recv_type = 2;
  recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
  recv_msg->msg.cmd = msg->rsp[1];
  memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 3U, (size_t )(msg->rsp_size + -3));
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65533U;
  }
  return;
}
}
static int handle_read_event_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_recv_msg *recv_msg ;
  struct ipmi_recv_msg *recv_msg2 ;
  struct list_head msgs ;
  ipmi_user_t user ;
  int rv ;
  int deliver_count ;
  unsigned long flags ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___3 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  rv = 0;
  deliver_count = 0;
  if (msg->rsp_size <= 18) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 24UL);
    }
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  {
  INIT_LIST_HEAD(& msgs);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(& intf->events_lock);
  atomic_inc((atomic_t *)(& intf->stats) + 25UL);
  rcu_read_lock();
  __ptr = intf->users.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  user = (struct ipmi_user *)__mptr;
  goto ldv_37278;
  ldv_37277: ;
  if (! user->gets_events) {
    goto ldv_37266;
  } else {
  }
  {
  recv_msg = ipmi_alloc_recv_msg();
  }
  if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
    {
    rcu_read_unlock();
    __mptr___0 = (struct list_head const *)msgs.next;
    recv_msg = (struct ipmi_recv_msg *)__mptr___0;
    __mptr___1 = (struct list_head const *)recv_msg->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___1;
    }
    goto ldv_37274;
    ldv_37273:
    {
    list_del(& recv_msg->link);
    ipmi_free_recv_msg(recv_msg);
    recv_msg = recv_msg2;
    __mptr___2 = (struct list_head const *)recv_msg2->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___2;
    }
    ldv_37274: ;
    if ((unsigned long )(& recv_msg->link) != (unsigned long )(& msgs)) {
      goto ldv_37273;
    } else {
    }
    rv = 1;
    goto out;
  } else {
  }
  {
  deliver_count = deliver_count + 1;
  copy_event_into_recv_msg(recv_msg, msg);
  recv_msg->user = user;
  kref_get(& user->refcount);
  list_add_tail(& recv_msg->link, & msgs);
  }
  ldv_37266:
  {
  __ptr___0 = user->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___3 = (struct list_head const *)________p1___0;
  user = (struct ipmi_user *)__mptr___3;
  ldv_37278: ;
  if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
    goto ldv_37277;
  } else {
  }
  {
  rcu_read_unlock();
  }
  if (deliver_count != 0) {
    __mptr___4 = (struct list_head const *)msgs.next;
    recv_msg = (struct ipmi_recv_msg *)__mptr___4;
    __mptr___5 = (struct list_head const *)recv_msg->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___5;
    goto ldv_37287;
    ldv_37286:
    {
    list_del(& recv_msg->link);
    deliver_response(recv_msg);
    recv_msg = recv_msg2;
    __mptr___6 = (struct list_head const *)recv_msg2->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___6;
    }
    ldv_37287: ;
    if ((unsigned long )(& recv_msg->link) != (unsigned long )(& msgs)) {
      goto ldv_37286;
    } else {
    }
  } else
  if (intf->waiting_events_count <= 24U) {
    {
    recv_msg = ipmi_alloc_recv_msg();
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      goto out;
    } else {
    }
    {
    copy_event_into_recv_msg(recv_msg, msg);
    list_add_tail(& recv_msg->link, & intf->waiting_events);
    intf->waiting_events_count = intf->waiting_events_count + 1U;
    }
  } else
  if ((int )((signed char )intf->event_msg_printed) == 0) {
    {
    printk("\fIPMI message handler: Event queue full, discarding incoming events\n");
    intf->event_msg_printed = 1;
    }
  } else {
  }
  out:
  {
  ldv_spin_unlock_irqrestore_137(& intf->events_lock, flags);
  }
  return (rv);
}
}
static int handle_bmc_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  struct ipmi_recv_msg *recv_msg ;
  struct ipmi_user *user ;
  struct ipmi_system_interface_addr *smi_addr ;
  {
  recv_msg = (struct ipmi_recv_msg *)msg->user_data;
  if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
    {
    printk("\fIPMI message received with no owner. This\ncould be because of a malformed message, or\nbecause of a hardware error.  Contact your\nhardware vender for assistance\n");
    }
    return (0);
  } else {
  }
  user = recv_msg->user;
  if ((unsigned long )user != (unsigned long )((struct ipmi_user *)0) && ! user->valid) {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 3UL);
    ipmi_free_recv_msg(recv_msg);
    }
  } else {
    {
    atomic_inc((atomic_t *)(& intf->stats) + 2UL);
    recv_msg->recv_type = 1;
    recv_msg->msgid = msg->msgid;
    smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
    smi_addr->addr_type = 12;
    smi_addr->channel = 15;
    smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
    recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
    recv_msg->msg.cmd = msg->rsp[1];
    memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 2U, (size_t )(msg->rsp_size + -2));
    recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
    recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65534U;
    deliver_response(recv_msg);
    }
  }
  return (0);
}
}
static int handle_one_recv_msg(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  int requeue ;
  int chan ;
  struct ipmi_recv_msg *recv_msg ;
  {
  if (msg->rsp_size <= 1) {
    {
    printk("\fIPMI message handler: BMC returned to small a message for netfn %x cmd %x, got %d bytes\n",
           (int )((unsigned int )((int )msg->data[0] >> 2) | 1U), (int )msg->data[1],
           msg->rsp_size);
    msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
    msg->rsp[1] = msg->data[1];
    msg->rsp[2] = 255U;
    msg->rsp_size = 3;
    }
  } else
  if ((unsigned int )((int )msg->rsp[0] >> 2) != ((unsigned int )((int )msg->data[0] >> 2) | 1U) || (int )msg->rsp[1] != (int )msg->data[1]) {
    {
    printk("\fIPMI message handler: BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
           (int )((unsigned int )((int )msg->data[0] >> 2) | 1U), (int )msg->data[1],
           (int )msg->rsp[0] >> 2, (int )msg->rsp[1]);
    msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
    msg->rsp[1] = msg->data[1];
    msg->rsp[2] = 255U;
    msg->rsp_size = 3;
    }
  } else {
  }
  if ((unsigned int )*((unsigned short *)msg + 156UL) == 13340U && (unsigned long )msg->user_data != (unsigned long )((void *)0)) {
    recv_msg = (struct ipmi_recv_msg *)msg->user_data;
    requeue = 0;
    if (msg->rsp_size <= 1) {
      goto out;
    } else {
    }
    chan = (int )msg->data[2] & 15;
    if (chan > 15) {
      goto out;
    } else {
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      goto out;
    } else {
    }
    if ((unsigned long )recv_msg->user == (unsigned long )((ipmi_user_t )0) || ! (recv_msg->user)->valid) {
      goto out;
    } else {
    }
    {
    recv_msg->recv_type = 4;
    recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
    recv_msg->msg.data_len = 1U;
    recv_msg->msg_data[0] = msg->rsp[2];
    deliver_response(recv_msg);
    }
  } else
  if ((unsigned int )*((unsigned short *)msg + 156UL) == 13084U) {
    chan = (int )msg->rsp[3] & 15;
    if (chan > 15) {
      requeue = 0;
      goto out;
    } else {
    }
    if (intf->curr_channel <= 15) {
      requeue = 0;
      goto out;
    } else {
    }
    {
    if ((int )intf->channels[chan].medium == 1) {
      goto case_1;
    } else {
    }
    if ((int )intf->channels[chan].medium == 4) {
      goto case_4;
    } else {
    }
    if ((int )intf->channels[chan].medium == 5) {
      goto case_5;
    } else {
    }
    goto switch_default;
    case_1: ;
    if (((int )msg->rsp[4] & 4) != 0) {
      {
      requeue = handle_ipmb_get_msg_rsp(intf, msg);
      }
    } else {
      {
      requeue = handle_ipmb_get_msg_cmd(intf, msg);
      }
    }
    goto ldv_37305;
    case_4: ;
    case_5: ;
    if (((int )msg->rsp[6] & 4) != 0) {
      {
      requeue = handle_lan_get_msg_rsp(intf, msg);
      }
    } else {
      {
      requeue = handle_lan_get_msg_cmd(intf, msg);
      }
    }
    goto ldv_37305;
    switch_default: ;
    if ((unsigned int )intf->channels[chan].medium - 96U <= 31U) {
      {
      requeue = handle_oem_get_msg_cmd(intf, msg);
      }
    } else {
      requeue = 0;
    }
    switch_break: ;
    }
    ldv_37305: ;
  } else
  if ((unsigned int )*((unsigned short *)msg + 156UL) == 13596U) {
    {
    requeue = handle_read_event_rsp(intf, msg);
    }
  } else {
    {
    requeue = handle_bmc_rsp(intf, msg);
    }
  }
  out: ;
  return (requeue);
}
}
static void handle_new_recv_msgs(ipmi_smi_t intf )
{
  struct ipmi_smi_msg *smi_msg ;
  unsigned long flags ;
  int rv ;
  int run_to_completion ;
  struct list_head const *__mptr ;
  int tmp ;
  ipmi_user_t user ;
  struct list_head *__ptr ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  flags = 0UL;
  run_to_completion = intf->run_to_completion;
  if (run_to_completion == 0) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(& intf->waiting_rcv_msgs_lock);
    }
  } else {
  }
  goto ldv_37320;
  ldv_37319:
  __mptr = (struct list_head const *)intf->waiting_rcv_msgs.next;
  smi_msg = (struct ipmi_smi_msg *)__mptr;
  if (run_to_completion == 0) {
    {
    ldv_spin_unlock_irqrestore_179(& intf->waiting_rcv_msgs_lock, flags);
    }
  } else {
  }
  {
  rv = handle_one_recv_msg(intf, smi_msg);
  }
  if (run_to_completion == 0) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_180(& intf->waiting_rcv_msgs_lock);
    }
  } else {
  }
  if (rv > 0) {
    goto ldv_37318;
  } else {
    {
    list_del(& smi_msg->link);
    }
    if (rv == 0) {
      {
      ipmi_free_smi_msg(smi_msg);
      }
    } else {
    }
  }
  ldv_37320:
  {
  tmp = list_empty((struct list_head const *)(& intf->waiting_rcv_msgs));
  }
  if (tmp == 0) {
    goto ldv_37319;
  } else {
  }
  ldv_37318: ;
  if (run_to_completion == 0) {
    {
    ldv_spin_unlock_irqrestore_179(& intf->waiting_rcv_msgs_lock, flags);
    }
  } else {
  }
  {
  tmp___2 = atomic_add_unless(& intf->watchdog_pretimeouts_to_deliver, -1, 0);
  }
  if (tmp___2 != 0) {
    {
    rcu_read_lock();
    __ptr = intf->users.next;
    __var = (struct list_head *)0;
    _________p1 = *((struct list_head * volatile *)(& __ptr));
    ________p1 = _________p1;
    tmp___0 = debug_lockdep_rcu_enabled();
    }
    if (tmp___0 != 0 && ! __warned) {
      {
      rcu_read_lock_held();
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)________p1;
    user = (struct ipmi_user *)__mptr___0;
    goto ldv_37345;
    ldv_37344: ;
    if ((unsigned long )(user->handler)->ipmi_watchdog_pretimeout != (unsigned long )((void (*)(void * ))0)) {
      {
      (*((user->handler)->ipmi_watchdog_pretimeout))(user->handler_data);
      }
    } else {
    }
    {
    __ptr___0 = user->link.next;
    __var___0 = (struct list_head *)0;
    _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
    ________p1___0 = _________p1___0;
    tmp___1 = debug_lockdep_rcu_enabled();
    }
    if (tmp___1 != 0 && ! __warned___0) {
      {
      rcu_read_lock_held();
      }
    } else {
    }
    __mptr___1 = (struct list_head const *)________p1___0;
    user = (struct ipmi_user *)__mptr___1;
    ldv_37345: ;
    if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
      goto ldv_37344;
    } else {
    }
    {
    rcu_read_unlock();
    }
  } else {
  }
  return;
}
}
static void smi_recv_tasklet(unsigned long val )
{
  unsigned long flags ;
  ipmi_smi_t intf ;
  int run_to_completion ;
  struct ipmi_smi_msg *newmsg ;
  struct list_head *entry ;
  int tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  {
  flags = 0UL;
  intf = (struct ipmi_smi *)val;
  run_to_completion = intf->run_to_completion;
  newmsg = (struct ipmi_smi_msg *)0;
  if (run_to_completion == 0) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_182(& intf->xmit_msgs_lock);
    }
  } else {
  }
  if ((unsigned long )intf->curr_msg == (unsigned long )((struct ipmi_smi_msg *)0) && ! intf->in_shutdown) {
    {
    entry = (struct list_head *)0;
    tmp___0 = list_empty((struct list_head const *)(& intf->hp_xmit_msgs));
    }
    if (tmp___0 == 0) {
      entry = intf->hp_xmit_msgs.next;
    } else {
      {
      tmp = list_empty((struct list_head const *)(& intf->xmit_msgs));
      }
      if (tmp == 0) {
        entry = intf->xmit_msgs.next;
      } else {
      }
    }
    if ((unsigned long )entry != (unsigned long )((struct list_head *)0)) {
      {
      list_del(entry);
      __mptr = (struct list_head const *)entry;
      newmsg = (struct ipmi_smi_msg *)__mptr;
      intf->curr_msg = newmsg;
      }
    } else {
    }
  } else {
  }
  if (run_to_completion == 0) {
    {
    ldv_spin_unlock_irqrestore_145(& intf->xmit_msgs_lock, flags);
    }
  } else {
  }
  if ((unsigned long )newmsg != (unsigned long )((struct ipmi_smi_msg *)0)) {
    {
    (*((intf->handlers)->sender))(intf->send_info, newmsg);
    }
  } else {
  }
  {
  handle_new_recv_msgs(intf);
  }
  return;
}
}
void ipmi_smi_msg_received(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{
  unsigned long flags ;
  int run_to_completion ;
  int chan ;
  {
  flags = 0UL;
  run_to_completion = intf->run_to_completion;
  if ((msg->data_size > 1 && (unsigned int )*((unsigned short *)msg + 18UL) == 13336U) && (unsigned long )msg->user_data == (unsigned long )((void *)0)) {
    if ((int )intf->in_shutdown) {
      goto free_msg;
    } else {
    }
    if (((((msg->rsp_size > 2 && (unsigned int )msg->rsp[2] != 0U) && (unsigned int )msg->rsp[2] != 192U) && (unsigned int )msg->rsp[2] != 129U) && (unsigned int )msg->rsp[2] != 130U) && (unsigned int )msg->rsp[2] != 131U) {
      chan = (int )msg->rsp[3] & 15;
      if (chan > 15) {
      } else
      if ((unsigned int )intf->channels[chan].medium - 4U <= 1U) {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 14UL);
        }
      } else {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 5UL);
        }
      }
      {
      intf_err_seq(intf, msg->msgid, (unsigned int )msg->rsp[2]);
      }
    } else {
      {
      intf_start_seq_timer(intf, msg->msgid);
      }
    }
    free_msg:
    {
    ipmi_free_smi_msg(msg);
    }
  } else {
    if (run_to_completion == 0) {
      {
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_184(& intf->waiting_rcv_msgs_lock);
      }
    } else {
    }
    {
    list_add_tail(& msg->link, & intf->waiting_rcv_msgs);
    }
    if (run_to_completion == 0) {
      {
      ldv_spin_unlock_irqrestore_179(& intf->waiting_rcv_msgs_lock, flags);
      }
    } else {
    }
  }
  if (run_to_completion == 0) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_186(& intf->xmit_msgs_lock);
    }
  } else {
  }
  if ((unsigned long )msg == (unsigned long )intf->curr_msg) {
    intf->curr_msg = (struct ipmi_smi_msg *)0;
  } else {
  }
  if (run_to_completion == 0) {
    {
    ldv_spin_unlock_irqrestore_145(& intf->xmit_msgs_lock, flags);
    }
  } else {
  }
  if (run_to_completion != 0) {
    {
    smi_recv_tasklet((unsigned long )intf);
    }
  } else {
    {
    tasklet_schedule(& intf->recv_tasklet);
    }
  }
  return;
}
}
static char const __kstrtab_ipmi_smi_msg_received[22U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'm', 's', 'g',
        '_', 'r', 'e', 'c',
        'e', 'i', 'v', 'e',
        'd', '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_msg_received ;
struct kernel_symbol const __ksymtab_ipmi_smi_msg_received = {(unsigned long )(& ipmi_smi_msg_received), (char const *)(& __kstrtab_ipmi_smi_msg_received)};
void ipmi_smi_watchdog_pretimeout(ipmi_smi_t intf )
{
  {
  if ((int )intf->in_shutdown) {
    return;
  } else {
  }
  {
  atomic_set(& intf->watchdog_pretimeouts_to_deliver, 1);
  tasklet_schedule(& intf->recv_tasklet);
  }
  return;
}
}
static char const __kstrtab_ipmi_smi_watchdog_pretimeout[29U] =
  { 'i', 'p', 'm', 'i',
        '_', 's', 'm', 'i',
        '_', 'w', 'a', 't',
        'c', 'h', 'd', 'o',
        'g', '_', 'p', 'r',
        'e', 't', 'i', 'm',
        'e', 'o', 'u', 't',
        '\000'};
struct kernel_symbol const __ksymtab_ipmi_smi_watchdog_pretimeout ;
struct kernel_symbol const __ksymtab_ipmi_smi_watchdog_pretimeout = {(unsigned long )(& ipmi_smi_watchdog_pretimeout), (char const *)(& __kstrtab_ipmi_smi_watchdog_pretimeout)};
static struct ipmi_smi_msg *smi_from_recv_msg(ipmi_smi_t intf , struct ipmi_recv_msg *recv_msg ,
                                              unsigned char seq , long seqid )
{
  struct ipmi_smi_msg *smi_msg ;
  struct ipmi_smi_msg *tmp ;
  {
  {
  tmp = ipmi_alloc_smi_msg();
  smi_msg = tmp;
  }
  if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
    return ((struct ipmi_smi_msg *)0);
  } else {
  }
  {
  memcpy((void *)(& smi_msg->data), (void const *)recv_msg->msg.data, (size_t )recv_msg->msg.data_len);
  smi_msg->data_size = (int )recv_msg->msg.data_len;
  smi_msg->msgid = (long )((int )seq << 26) | (seqid & 67108863L);
  }
  return (smi_msg);
}
}
static void check_msg_timeout(ipmi_smi_t intf , struct seq_table *ent , struct list_head *timeouts ,
                              long timeout_period , int slot , unsigned long *flags ,
                              unsigned int *waiting_msgs )
{
  struct ipmi_recv_msg *msg ;
  struct ipmi_smi_handlers *handlers ;
  int tmp ;
  struct ipmi_smi_msg *smi_msg ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((int )intf->in_shutdown) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ent + 0UL) == 0U) {
    return;
  } else {
  }
  ent->timeout = ent->timeout - (unsigned long )timeout_period;
  if (ent->timeout != 0UL) {
    *waiting_msgs = *waiting_msgs + 1U;
    return;
  } else {
  }
  if (ent->retries_left == 0U) {
    {
    ent->inuse = 0U;
    msg = ent->recv_msg;
    list_add_tail(& msg->link, timeouts);
    }
    if ((unsigned int )*((unsigned char *)ent + 0UL) != 0U) {
      {
      atomic_inc((atomic_t *)(& intf->stats) + 8UL);
      }
    } else {
      {
      tmp = is_lan_addr(& (ent->recv_msg)->addr);
      }
      if (tmp != 0) {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 16UL);
        }
      } else {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 7UL);
        }
      }
    }
  } else {
    {
    *waiting_msgs = *waiting_msgs + 1U;
    ent->timeout = 60000UL;
    ent->retries_left = ent->retries_left - 1U;
    smi_msg = smi_from_recv_msg(intf, ent->recv_msg, (int )((unsigned char )slot),
                                ent->seqid);
    }
    if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
      {
      tmp___0 = is_lan_addr(& (ent->recv_msg)->addr);
      }
      if (tmp___0 != 0) {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 27UL);
        }
      } else {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 26UL);
        }
      }
      return;
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_110(& intf->seq_lock, *flags);
    handlers = intf->handlers;
    }
    if ((unsigned long )handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
      {
      tmp___1 = is_lan_addr(& (ent->recv_msg)->addr);
      }
      if (tmp___1 != 0) {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 15UL);
        }
      } else {
        {
        atomic_inc((atomic_t *)(& intf->stats) + 6UL);
        }
      }
      {
      smi_send(intf, intf->handlers, smi_msg, 0);
      }
    } else {
      {
      ipmi_free_smi_msg(smi_msg);
      }
    }
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_189(& intf->seq_lock);
    }
  }
  return;
}
}
static unsigned int ipmi_timeout_handler(ipmi_smi_t intf , long timeout_period )
{
  struct list_head timeouts ;
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  unsigned long flags ;
  int i ;
  unsigned int waiting_msgs ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  {
  waiting_msgs = 0U;
  INIT_LIST_HEAD(& timeouts);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(& intf->seq_lock);
  i = 0;
  }
  goto ldv_37413;
  ldv_37412:
  {
  check_msg_timeout(intf, (struct seq_table *)(& intf->seq_table) + (unsigned long )i,
                    & timeouts, timeout_period, i, & flags, & waiting_msgs);
  i = i + 1;
  }
  ldv_37413: ;
  if (i <= 63) {
    goto ldv_37412;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_110(& intf->seq_lock, flags);
  __mptr = (struct list_head const *)timeouts.next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  }
  goto ldv_37422;
  ldv_37421:
  {
  deliver_err_response(msg, 195);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  }
  ldv_37422: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& timeouts)) {
    goto ldv_37421;
  } else {
  }
  if (intf->auto_maintenance_timeout > 0) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_192(& intf->maintenance_mode_lock);
    }
    if (intf->auto_maintenance_timeout > 0) {
      intf->auto_maintenance_timeout = (int )((unsigned int )intf->auto_maintenance_timeout - (unsigned int )timeout_period);
      if (intf->maintenance_mode == 0 && intf->auto_maintenance_timeout <= 0) {
        {
        intf->maintenance_mode_enable = 0;
        maintenance_mode_update(intf);
        }
      } else {
      }
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_133(& intf->maintenance_mode_lock, flags);
    }
  } else {
  }
  {
  tasklet_schedule(& intf->recv_tasklet);
  }
  return (waiting_msgs);
}
}
static void ipmi_request_event(ipmi_smi_t intf )
{
  {
  if ((int )intf->maintenance_mode_enable) {
    return;
  } else {
  }
  if (! intf->in_shutdown) {
    {
    (*((intf->handlers)->request_events))(intf->send_info);
    }
  } else {
  }
  return;
}
}
static struct timer_list ipmi_timer ;
static atomic_t stop_operation ;
static void ipmi_timeout(unsigned long data )
{
  ipmi_smi_t intf ;
  int nt ;
  int tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp___0 ;
  int lnt ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___3 ;
  {
  {
  nt = 0;
  tmp = atomic_read((atomic_t const *)(& stop_operation));
  }
  if (tmp != 0) {
    return;
  } else {
  }
  {
  rcu_read_lock();
  __ptr = ipmi_interfaces.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37458;
  ldv_37457:
  {
  lnt = 0;
  tmp___1 = atomic_read((atomic_t const *)(& intf->event_waiters));
  }
  if (tmp___1 != 0) {
    intf->ticks_to_req_ev = intf->ticks_to_req_ev - 1U;
    if (intf->ticks_to_req_ev == 0U) {
      {
      ipmi_request_event(intf);
      intf->ticks_to_req_ev = 1U;
      }
    } else {
    }
    lnt = lnt + 1;
  } else {
  }
  {
  tmp___2 = ipmi_timeout_handler(intf, 1000L);
  lnt = (int )((unsigned int )lnt + tmp___2);
  lnt = lnt != 0;
  }
  if (lnt != intf->last_needs_timer && (unsigned long )(intf->handlers)->set_need_watch != (unsigned long )((void (*)(void * ,
                                                                                                                      bool ))0)) {
    {
    (*((intf->handlers)->set_need_watch))(intf->send_info, lnt != 0);
    }
  } else {
  }
  {
  intf->last_needs_timer = lnt;
  nt = nt + lnt;
  __ptr___0 = intf->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___3 = debug_lockdep_rcu_enabled();
  }
  if (tmp___3 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37458: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_37457;
  } else {
  }
  {
  rcu_read_unlock();
  }
  if (nt != 0) {
    {
    ldv_mod_timer_194(& ipmi_timer, (unsigned long )jiffies + 250UL);
    }
  } else {
  }
  return;
}
}
static void need_waiter(ipmi_smi_t intf )
{
  int tmp ;
  {
  {
  tmp = timer_pending((struct timer_list const *)(& ipmi_timer));
  }
  if (tmp == 0) {
    {
    ldv_mod_timer_195(& ipmi_timer, (unsigned long )jiffies + 250UL);
    }
  } else {
  }
  return;
}
}
static atomic_t smi_msg_inuse_count = {0};
static atomic_t recv_msg_inuse_count = {0};
static void free_smi_msg(struct ipmi_smi_msg *msg )
{
  {
  {
  atomic_dec(& smi_msg_inuse_count);
  kfree((void const *)msg);
  }
  return;
}
}
struct ipmi_smi_msg *ipmi_alloc_smi_msg(void)
{
  struct ipmi_smi_msg *rv ;
  void *tmp ;
  {
  {
  tmp = kmalloc(592UL, 32U);
  rv = (struct ipmi_smi_msg *)tmp;
  }
  if ((unsigned long )rv != (unsigned long )((struct ipmi_smi_msg *)0)) {
    {
    rv->done = & free_smi_msg;
    rv->user_data = (void *)0;
    atomic_inc(& smi_msg_inuse_count);
    }
  } else {
  }
  return (rv);
}
}
static char const __kstrtab_ipmi_alloc_smi_msg[19U] =
  { 'i', 'p', 'm', 'i',
        '_', 'a', 'l', 'l',
        'o', 'c', '_', 's',
        'm', 'i', '_', 'm',
        's', 'g', '\000'};
struct kernel_symbol const __ksymtab_ipmi_alloc_smi_msg ;
struct kernel_symbol const __ksymtab_ipmi_alloc_smi_msg = {(unsigned long )(& ipmi_alloc_smi_msg), (char const *)(& __kstrtab_ipmi_alloc_smi_msg)};
static void free_recv_msg(struct ipmi_recv_msg *msg )
{
  {
  {
  atomic_dec(& recv_msg_inuse_count);
  kfree((void const *)msg);
  }
  return;
}
}
static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void)
{
  struct ipmi_recv_msg *rv ;
  void *tmp ;
  {
  {
  tmp = kmalloc(384UL, 32U);
  rv = (struct ipmi_recv_msg *)tmp;
  }
  if ((unsigned long )rv != (unsigned long )((struct ipmi_recv_msg *)0)) {
    {
    rv->user = (ipmi_user_t )0;
    rv->done = & free_recv_msg;
    atomic_inc(& recv_msg_inuse_count);
    }
  } else {
  }
  return (rv);
}
}
void ipmi_free_recv_msg(struct ipmi_recv_msg *msg )
{
  {
  if ((unsigned long )msg->user != (unsigned long )((ipmi_user_t )0)) {
    {
    kref_put(& (msg->user)->refcount, & free_user);
    }
  } else {
  }
  {
  (*(msg->done))(msg);
  }
  return;
}
}
static char const __kstrtab_ipmi_free_recv_msg[19U] =
  { 'i', 'p', 'm', 'i',
        '_', 'f', 'r', 'e',
        'e', '_', 'r', 'e',
        'c', 'v', '_', 'm',
        's', 'g', '\000'};
struct kernel_symbol const __ksymtab_ipmi_free_recv_msg ;
struct kernel_symbol const __ksymtab_ipmi_free_recv_msg = {(unsigned long )(& ipmi_free_recv_msg), (char const *)(& __kstrtab_ipmi_free_recv_msg)};
static atomic_t panic_done_count = {0};
static void dummy_smi_done_handler(struct ipmi_smi_msg *msg )
{
  {
  {
  atomic_dec(& panic_done_count);
  }
  return;
}
}
static void dummy_recv_done_handler(struct ipmi_recv_msg *msg )
{
  {
  {
  atomic_dec(& panic_done_count);
  }
  return;
}
}
static void ipmi_panic_request_and_wait(ipmi_smi_t intf , struct ipmi_addr *addr ,
                                        struct kernel_ipmi_msg *msg )
{
  struct ipmi_smi_msg smi_msg ;
  struct ipmi_recv_msg recv_msg ;
  int rv ;
  int tmp ;
  {
  {
  smi_msg.done = & dummy_smi_done_handler;
  recv_msg.done = & dummy_recv_done_handler;
  atomic_add(2, & panic_done_count);
  rv = i_ipmi_request((ipmi_user_t )0, intf, addr, 0L, msg, (void *)intf, (void *)(& smi_msg),
                      & recv_msg, 0, (int )intf->channels[0].address, (int )intf->channels[0].lun,
                      0, 1U);
  }
  if (rv != 0) {
    {
    atomic_sub(2, & panic_done_count);
    }
  } else {
  }
  goto ldv_37511;
  ldv_37510:
  {
  ipmi_poll(intf);
  }
  ldv_37511:
  {
  tmp = atomic_read((atomic_t const *)(& panic_done_count));
  }
  if (tmp != 0) {
    goto ldv_37510;
  } else {
  }
  return;
}
}
static void event_receiver_fetcher(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if ((msg->addr.addr_type == 12 && (unsigned int )*((unsigned short *)msg + 40UL) == 261U) && (unsigned int )*(msg->msg.data) == 0U) {
    intf->event_receiver = *(msg->msg.data + 1UL);
    intf->event_receiver_lun = (unsigned int )*(msg->msg.data + 2UL) & 3U;
  } else {
  }
  return;
}
}
static void device_id_fetcher(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if ((msg->addr.addr_type == 12 && (unsigned int )*((unsigned short *)msg + 40UL) == 263U) && (unsigned int )*(msg->msg.data) == 0U) {
    intf->local_sel_device = (unsigned int )((int )*(msg->msg.data + 6UL) >> 2) & 1U;
    intf->local_event_generator = (unsigned int )((int )*(msg->msg.data + 6UL) >> 5) & 1U;
  } else {
  }
  return;
}
}
static void send_panic_events(char *str )
{
  struct kernel_ipmi_msg msg ;
  ipmi_smi_t intf ;
  unsigned char data[16U] ;
  struct ipmi_system_interface_addr *si ;
  struct ipmi_addr addr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *________p1___1 ;
  struct list_head *_________p1___1 ;
  struct list_head *__var___1 ;
  bool __warned___1 ;
  int tmp___1 ;
  char *p ;
  struct ipmi_ipmb_addr *ipmb ;
  int j ;
  int size ;
  size_t tmp___2 ;
  int tmp___3 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *________p1___2 ;
  struct list_head *_________p1___2 ;
  struct list_head *__var___2 ;
  bool __warned___2 ;
  int tmp___4 ;
  {
  si = (struct ipmi_system_interface_addr *)(& addr);
  si->addr_type = 12;
  si->channel = 15;
  si->lun = 0U;
  msg.netfn = 4U;
  msg.cmd = 2U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 8U;
  data[0] = 65U;
  data[1] = 3U;
  data[2] = 32U;
  data[4] = 111U;
  data[5] = 161U;
  if ((unsigned long )str != (unsigned long )((char *)0)) {
    data[3] = (unsigned char )*str;
    data[6] = (unsigned char )*(str + 1UL);
    data[7] = (unsigned char )*(str + 2UL);
  } else {
  }
  {
  __ptr = ipmi_interfaces.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37553;
  ldv_37552: ;
  if ((unsigned long )intf->handlers == (unsigned long )((struct ipmi_smi_handlers *)0)) {
    goto ldv_37551;
  } else {
  }
  {
  intf->run_to_completion = 1;
  (*((intf->handlers)->set_run_to_completion))(intf->send_info, 1);
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  }
  ldv_37551:
  {
  __ptr___0 = intf->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37553: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_37552;
  } else {
  }
  if ((unsigned long )str == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  {
  __ptr___1 = ipmi_interfaces.next;
  __var___1 = (struct list_head *)0;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  ________p1___1 = _________p1___1;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned___1) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)________p1___1;
  intf = (struct ipmi_smi *)__mptr___1 + 0xfffffffffffffff0UL;
  goto ldv_37586;
  ldv_37585:
  p = str;
  if (intf->intf_num == -1) {
    goto ldv_37580;
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  intf->local_sel_device = 0U;
  intf->local_event_generator = 0U;
  intf->event_receiver = 0U;
  msg.netfn = 6U;
  msg.cmd = 1U;
  msg.data = (unsigned char *)0U;
  msg.data_len = 0U;
  intf->null_user_handler = & device_id_fetcher;
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  }
  if ((unsigned int )intf->local_event_generator != 0U) {
    {
    msg.netfn = 4U;
    msg.cmd = 1U;
    msg.data = (unsigned char *)0U;
    msg.data_len = 0U;
    intf->null_user_handler = & event_receiver_fetcher;
    ipmi_panic_request_and_wait(intf, & addr, & msg);
    }
  } else {
  }
  intf->null_user_handler = (void (*)(ipmi_smi_t , struct ipmi_recv_msg * ))0;
  if ((((int )intf->event_receiver & 1) == 0 && (unsigned int )intf->event_receiver != 0U) && (int )intf->event_receiver != (int )intf->channels[0].address) {
    ipmb = (struct ipmi_ipmb_addr *)(& addr);
    ipmb->addr_type = 1;
    ipmb->channel = 0;
    ipmb->lun = intf->event_receiver_lun;
    ipmb->slave_addr = intf->event_receiver;
  } else
  if ((unsigned int )intf->local_sel_device != 0U) {
    si = (struct ipmi_system_interface_addr *)(& addr);
    si->addr_type = 12;
    si->channel = 15;
    si->lun = 0U;
  } else {
    goto ldv_37580;
  }
  msg.netfn = 10U;
  msg.cmd = 68U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 16U;
  j = 0;
  goto ldv_37583;
  ldv_37582:
  {
  tmp___2 = strlen((char const *)p);
  size = (int )tmp___2;
  }
  if (size > 11) {
    size = 11;
  } else {
  }
  {
  data[0] = 0U;
  data[1] = 0U;
  data[2] = 240U;
  data[3] = intf->channels[0].address;
  tmp___3 = j;
  j = j + 1;
  data[4] = (unsigned char )tmp___3;
  strncpy((char *)(& data) + 5U, (char const *)p, 11UL);
  p = p + (unsigned long )size;
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  }
  ldv_37583: ;
  if ((int )((signed char )*p) != 0) {
    goto ldv_37582;
  } else {
  }
  ldv_37580:
  {
  __ptr___2 = intf->link.next;
  __var___2 = (struct list_head *)0;
  _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
  ________p1___2 = _________p1___2;
  tmp___4 = debug_lockdep_rcu_enabled();
  }
  if (tmp___4 != 0 && ! __warned___2) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)________p1___2;
  intf = (struct ipmi_smi *)__mptr___2 + 0xfffffffffffffff0UL;
  ldv_37586: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_37585;
  } else {
  }
  return;
}
}
static int has_panicked ;
static int panic_event(struct notifier_block *this , unsigned long event , void *ptr )
{
  ipmi_smi_t intf ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  if (has_panicked != 0) {
    return (0);
  } else {
  }
  {
  has_panicked = 1;
  __ptr = ipmi_interfaces.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff0UL;
  goto ldv_37619;
  ldv_37618: ;
  if ((unsigned long )intf->handlers == (unsigned long )((struct ipmi_smi_handlers *)0)) {
    goto ldv_37617;
  } else {
  }
  {
  intf->run_to_completion = 1;
  (*((intf->handlers)->set_run_to_completion))(intf->send_info, 1);
  }
  ldv_37617:
  {
  __ptr___0 = intf->link.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff0UL;
  ldv_37619: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_37618;
  } else {
  }
  {
  send_panic_events((char *)ptr);
  }
  return (0);
}
}
static struct notifier_block panic_block = {& panic_event, (struct notifier_block *)0, 200};
static int ipmi_init_msghandler(void)
{
  int rv ;
  struct lock_class_key __key ;
  {
  if (initialized != 0) {
    return (0);
  } else {
  }
  {
  rv = driver_register(& ipmidriver.driver);
  }
  if (rv != 0) {
    {
    printk("\vIPMI message handler: Could not register IPMI driver\n");
    }
    return (rv);
  } else {
  }
  {
  printk("\016ipmi message handler version 39.2\n");
  proc_ipmi_root = proc_mkdir("ipmi", (struct proc_dir_entry *)0);
  }
  if ((unsigned long )proc_ipmi_root == (unsigned long )((struct proc_dir_entry *)0)) {
    {
    printk("\vIPMI message handler: Unable to create IPMI proc dir");
    driver_unregister(& ipmidriver.driver);
    }
    return (-12);
  } else {
  }
  {
  init_timer_key(& ipmi_timer, 0U, "((&ipmi_timer))", & __key);
  ipmi_timer.function = & ipmi_timeout;
  ipmi_timer.data = 0UL;
  ldv_mod_timer_196(& ipmi_timer, (unsigned long )jiffies + 250UL);
  ldv_atomic_notifier_chain_register_197(& panic_notifier_list, & panic_block);
  initialized = 1;
  }
  return (0);
}
}
static int ipmi_init_msghandler_mod(void)
{
  {
  {
  ipmi_init_msghandler();
  }
  return (0);
}
}
static void cleanup_ipmi(void)
{
  int count ;
  {
  if (initialized == 0) {
    return;
  } else {
  }
  {
  ldv_atomic_notifier_chain_unregister_198(& panic_notifier_list, & panic_block);
  atomic_inc(& stop_operation);
  ldv_del_timer_sync_199(& ipmi_timer);
  proc_remove(proc_ipmi_root);
  driver_unregister(& ipmidriver.driver);
  initialized = 0;
  count = atomic_read((atomic_t const *)(& smi_msg_inuse_count));
  }
  if (count != 0) {
    {
    printk("\fIPMI message handler: SMI message count %d at exit\n", count);
    }
  } else {
  }
  {
  count = atomic_read((atomic_t const *)(& recv_msg_inuse_count));
  }
  if (count != 0) {
    {
    printk("\fIPMI message handler: recv message count %d at exit\n", count);
    }
  } else {
  }
  return;
}
}
void ldv_EMGentry_exit_cleanup_ipmi_20_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_ipmi_init_msghandler_mod_20_13(int (*arg0)(void) ) ;
int ldv_atomic_notifier_chain_register(int arg0 , struct atomic_notifier_head *arg1 ,
                                       struct notifier_block *arg2 ) ;
int ldv_atomic_notifier_chain_unregister(int arg0 , struct atomic_notifier_head *arg1 ,
                                         struct notifier_block *arg2 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_18_1(struct notifier_block *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_4_20_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_5_20_5(void) ;
void ldv_dispatch_deregister_file_operations_instance_3_20_6(void) ;
void ldv_dispatch_instance_deregister_16_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_17_2(struct timer_list *arg0 ) ;
void ldv_dispatch_register_19_2(struct notifier_block *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_4_20_7(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_5_20_8(void) ;
void ldv_dispatch_register_file_operations_instance_3_20_9(void) ;
void ldv_dummy_resourceless_instance_callback_10_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct notifier_block * ,
                                                               unsigned long , void * ) ,
                                                   struct notifier_block *arg1 , unsigned long arg2 ,
                                                   void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(unsigned short (*arg0)(struct kobject * ,
                                                                         struct attribute * ,
                                                                         int ) ,
                                                  struct kobject *arg1 , struct attribute *arg2 ,
                                                  int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 ) ;
void ldv_entry_EMGentry_20(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_2(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_1_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
void ldv_file_operations_instance_callback_2_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_2_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
void ldv_struct_attribute_group_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_device_attribute_dummy_resourceless_instance_9(void *arg0 ) ;
void ldv_struct_notifier_block_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_timer_instance_callback_15_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_15(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_cleanup_ipmi_20_2(void (*arg0)(void) )
{
  {
  {
  cleanup_ipmi();
  }
  return;
}
}
int ldv_EMGentry_init_ipmi_init_msghandler_mod_20_13(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = ipmi_init_msghandler_mod();
  }
  return (tmp);
}
}
int ldv_atomic_notifier_chain_register(int arg0 , struct atomic_notifier_head *arg1 ,
                                       struct notifier_block *arg2 )
{
  struct notifier_block *ldv_19_struct_notifier_block_struct_notifier_block ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_19_struct_notifier_block_struct_notifier_block = arg2;
    ldv_dispatch_register_19_2(ldv_19_struct_notifier_block_struct_notifier_block);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
int ldv_atomic_notifier_chain_unregister(int arg0 , struct atomic_notifier_head *arg1 ,
                                         struct notifier_block *arg2 )
{
  struct notifier_block *ldv_18_struct_notifier_block_struct_notifier_block ;
  {
  {
  ldv_18_struct_notifier_block_struct_notifier_block = arg2;
  ldv_dispatch_deregister_18_1(ldv_18_struct_notifier_block_struct_notifier_block);
  }
  return (arg0);
  return (arg0);
}
}
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_16_timer_list_timer_list ;
  {
  {
  ldv_16_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_16_1(ldv_16_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_18_1(struct notifier_block *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_4_20_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_5_20_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_3_20_6(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_16_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_17_2(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_15 *cf_arg_15 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_15 = (struct ldv_struct_timer_instance_15 *)tmp;
  cf_arg_15->arg0 = arg0;
  ldv_timer_timer_instance_15((void *)cf_arg_15);
  }
  return;
}
}
void ldv_dispatch_register_19_2(struct notifier_block *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_14 *cf_arg_14 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_14 = (struct ldv_struct_dummy_resourceless_instance_14 *)tmp;
  cf_arg_14->arg0 = arg0;
  ldv_struct_notifier_block_dummy_resourceless_instance_14((void *)cf_arg_14);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_4_20_7(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_3 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_struct_attribute_group_dummy_resourceless_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_5_20_8(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_4 ;
  struct ldv_struct_EMGentry_20 *cf_arg_5 ;
  struct ldv_struct_EMGentry_20 *cf_arg_6 ;
  struct ldv_struct_EMGentry_20 *cf_arg_7 ;
  struct ldv_struct_EMGentry_20 *cf_arg_8 ;
  struct ldv_struct_EMGentry_20 *cf_arg_9 ;
  struct ldv_struct_EMGentry_20 *cf_arg_10 ;
  struct ldv_struct_EMGentry_20 *cf_arg_11 ;
  struct ldv_struct_EMGentry_20 *cf_arg_12 ;
  struct ldv_struct_EMGentry_20 *cf_arg_13 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_struct_device_attribute_dummy_resourceless_instance_4((void *)cf_arg_4);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_20 *)tmp___0;
  ldv_struct_device_attribute_dummy_resourceless_instance_5((void *)cf_arg_5);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_20 *)tmp___1;
  ldv_struct_device_attribute_dummy_resourceless_instance_6((void *)cf_arg_6);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_7 = (struct ldv_struct_EMGentry_20 *)tmp___2;
  ldv_struct_device_attribute_dummy_resourceless_instance_7((void *)cf_arg_7);
  tmp___3 = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_EMGentry_20 *)tmp___3;
  ldv_struct_device_attribute_dummy_resourceless_instance_8((void *)cf_arg_8);
  tmp___4 = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_20 *)tmp___4;
  ldv_struct_device_attribute_dummy_resourceless_instance_9((void *)cf_arg_9);
  tmp___5 = ldv_xmalloc(4UL);
  cf_arg_10 = (struct ldv_struct_EMGentry_20 *)tmp___5;
  ldv_struct_device_attribute_dummy_resourceless_instance_10((void *)cf_arg_10);
  tmp___6 = ldv_xmalloc(4UL);
  cf_arg_11 = (struct ldv_struct_EMGentry_20 *)tmp___6;
  ldv_struct_device_attribute_dummy_resourceless_instance_11((void *)cf_arg_11);
  tmp___7 = ldv_xmalloc(4UL);
  cf_arg_12 = (struct ldv_struct_EMGentry_20 *)tmp___7;
  ldv_struct_device_attribute_dummy_resourceless_instance_12((void *)cf_arg_12);
  tmp___8 = ldv_xmalloc(4UL);
  cf_arg_13 = (struct ldv_struct_EMGentry_20 *)tmp___8;
  ldv_struct_device_attribute_dummy_resourceless_instance_13((void *)cf_arg_13);
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_3_20_9(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_0 ;
  struct ldv_struct_EMGentry_20 *cf_arg_1 ;
  struct ldv_struct_EMGentry_20 *cf_arg_2 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_20 *)tmp___0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_20 *)tmp___1;
  ldv_file_operations_file_operations_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  manufacturer_id_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  product_id_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  provides_device_sdrs_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(long (*arg0)(struct device * ,
                                                                struct device_attribute * ,
                                                                char * ) , struct device *arg1 ,
                                                   struct device_attribute *arg2 ,
                                                   char *arg3 )
{
  {
  {
  revision_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct notifier_block * ,
                                                               unsigned long , void * ) ,
                                                   struct notifier_block *arg1 , unsigned long arg2 ,
                                                   void *arg3 )
{
  {
  {
  panic_event(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(unsigned short (*arg0)(struct kobject * ,
                                                                         struct attribute * ,
                                                                         int ) ,
                                                  struct kobject *arg1 , struct attribute *arg2 ,
                                                  int arg3 )
{
  {
  {
  bmc_dev_attr_is_visible(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  add_dev_support_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  aux_firmware_rev_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  device_id_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  firmware_revision_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  guid_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(long (*arg0)(struct device * , struct device_attribute * ,
                                                               char * ) , struct device *arg1 ,
                                                  struct device_attribute *arg2 ,
                                                  char *arg3 )
{
  {
  {
  ipmi_version_show(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_20(void *arg0 )
{
  void (*ldv_20_exit_cleanup_ipmi_default)(void) ;
  int (*ldv_20_init_ipmi_init_msghandler_mod_default)(void) ;
  int ldv_20_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_20_ret_default = ldv_EMGentry_init_ipmi_init_msghandler_mod_20_13(ldv_20_init_ipmi_init_msghandler_mod_default);
  ldv_20_ret_default = ldv_ldv_post_init_200(ldv_20_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_20_ret_default != 0);
    ldv_ldv_check_final_state_201();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_20_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_file_operations_instance_3_20_9();
      ldv_dispatch_register_dummy_resourceless_instance_5_20_8();
      ldv_dispatch_register_dummy_resourceless_instance_4_20_7();
      ldv_dispatch_deregister_file_operations_instance_3_20_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_5_20_5();
      ldv_dispatch_deregister_dummy_resourceless_instance_4_20_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_cleanup_ipmi_20_2(ldv_20_exit_cleanup_ipmi_default);
    ldv_ldv_check_final_state_202();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_ldv_initialize_203();
  ldv_entry_EMGentry_20((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_22_1_default ;
  long long *ldv_0_ldv_param_22_3_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  long long ldv_0_ldv_param_5_1_default ;
  int ldv_0_ldv_param_5_2_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  unsigned long ldv_0_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  {
  ldv_0_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_0_ret_default == 0);
      }
      goto ldv_call_0;
    } else {
      {
      ldv_assume(ldv_0_ret_default != 0);
      }
      goto ldv_main_0;
    }
  } else {
    {
    ldv_free((void *)ldv_0_resource_file);
    ldv_free((void *)ldv_0_resource_inode);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_0_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_0_container_file_operations->write,
                                           ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                           ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  }
  goto ldv_call_0;
  case_2:
  {
  ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                           ldv_0_resource_inode, ldv_0_resource_file);
  }
  goto ldv_main_0;
  case_3:
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    tmp___7 = ldv_xmalloc(1UL);
    ldv_0_ldv_param_22_1_default = (char *)tmp___7;
    tmp___8 = ldv_xmalloc(8UL);
    ldv_0_ldv_param_22_3_default = (long long *)tmp___8;
    ldv_file_operations_instance_callback_0_22(ldv_0_callback_read, ldv_0_resource_file,
                                               ldv_0_ldv_param_22_1_default, ldv_0_size_cnt_write_size,
                                               ldv_0_ldv_param_22_3_default);
    ldv_free((void *)ldv_0_ldv_param_22_1_default);
    ldv_free((void *)ldv_0_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_file_operations_instance_callback_0_5(ldv_0_callback_llseek, ldv_0_resource_file,
                                              ldv_0_ldv_param_5_1_default, ldv_0_ldv_param_5_2_default);
    }
  }
  goto ldv_38207;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_38207: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_1_container_file_operations ;
  char *ldv_1_ldv_param_22_1_default ;
  long long *ldv_1_ldv_param_22_3_default ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  long long ldv_1_ldv_param_5_1_default ;
  int ldv_1_ldv_param_5_2_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
  unsigned long ldv_1_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  {
  ldv_1_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_1_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                ldv_1_resource_inode,
                                                                ldv_1_resource_file);
    ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_1_ret_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_ret_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_file);
    ldv_free((void *)ldv_1_resource_inode);
    }
    return;
  }
  return;
  ldv_call_1:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_1_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_1_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_1_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_1_container_file_operations->write,
                                           ldv_1_resource_file, ldv_1_ldv_param_4_1_default,
                                           ldv_1_size_cnt_write_size, ldv_1_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_1_ldv_param_4_1_default);
  ldv_free((void *)ldv_1_ldv_param_4_3_default);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_file_operations_instance_release_1_2(ldv_1_container_file_operations->release,
                                           ldv_1_resource_inode, ldv_1_resource_file);
  }
  goto ldv_main_1;
  case_3:
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    tmp___7 = ldv_xmalloc(1UL);
    ldv_1_ldv_param_22_1_default = (char *)tmp___7;
    tmp___8 = ldv_xmalloc(8UL);
    ldv_1_ldv_param_22_3_default = (long long *)tmp___8;
    ldv_file_operations_instance_callback_1_22(ldv_1_callback_read, ldv_1_resource_file,
                                               ldv_1_ldv_param_22_1_default, ldv_1_size_cnt_write_size,
                                               ldv_1_ldv_param_22_3_default);
    ldv_free((void *)ldv_1_ldv_param_22_1_default);
    ldv_free((void *)ldv_1_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_file_operations_instance_callback_1_5(ldv_1_callback_llseek, ldv_1_resource_file,
                                              ldv_1_ldv_param_5_1_default, ldv_1_ldv_param_5_2_default);
    }
  }
  goto ldv_38237;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_38237: ;
  goto ldv_call_1;
  goto ldv_call_1;
  return;
}
}
void ldv_file_operations_file_operations_instance_2(void *arg0 )
{
  long long (*ldv_2_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_2_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_2_container_file_operations ;
  char *ldv_2_ldv_param_22_1_default ;
  long long *ldv_2_ldv_param_22_3_default ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  long long ldv_2_ldv_param_5_1_default ;
  int ldv_2_ldv_param_5_2_default ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  int ldv_2_ret_default ;
  unsigned long ldv_2_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  {
  ldv_2_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_2_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_2_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_2_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_2_ret_default = ldv_file_operations_instance_probe_2_12(ldv_2_container_file_operations->open,
                                                                ldv_2_resource_inode,
                                                                ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_2_ret_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      ldv_assume(ldv_2_ret_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_file);
    ldv_free((void *)ldv_2_resource_inode);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_2_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_2_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_2_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_2_container_file_operations->write,
                                           ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                           ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_2_ldv_param_4_1_default);
  ldv_free((void *)ldv_2_ldv_param_4_3_default);
  }
  goto ldv_call_2;
  case_2:
  {
  ldv_file_operations_instance_release_2_2(ldv_2_container_file_operations->release,
                                           ldv_2_resource_inode, ldv_2_resource_file);
  }
  goto ldv_main_2;
  case_3:
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    tmp___7 = ldv_xmalloc(1UL);
    ldv_2_ldv_param_22_1_default = (char *)tmp___7;
    tmp___8 = ldv_xmalloc(8UL);
    ldv_2_ldv_param_22_3_default = (long long *)tmp___8;
    ldv_file_operations_instance_callback_2_22(ldv_2_callback_read, ldv_2_resource_file,
                                               ldv_2_ldv_param_22_1_default, ldv_2_size_cnt_write_size,
                                               ldv_2_ldv_param_22_3_default);
    ldv_free((void *)ldv_2_ldv_param_22_1_default);
    ldv_free((void *)ldv_2_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_file_operations_instance_callback_2_5(ldv_2_callback_llseek, ldv_2_resource_file,
                                              ldv_2_ldv_param_5_1_default, ldv_2_ldv_param_5_2_default);
    }
  }
  goto ldv_38267;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_38267: ;
  goto ldv_call_2;
  goto ldv_call_2;
  return;
}
}
void ldv_file_operations_instance_callback_0_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_2_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = smi_ipmb_proc_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = smi_stats_proc_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = smi_version_proc_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_release_2_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  single_release(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_17_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_17_timer_list_timer_list = arg1;
    ldv_dispatch_instance_register_17_2(ldv_17_timer_list_timer_list);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_struct_attribute_group_dummy_resourceless_instance_3(void *arg0 )
{
  unsigned short (*ldv_3_callback_is_visible)(struct kobject * , struct attribute * ,
                                              int ) ;
  struct attribute *ldv_3_container_struct_attribute_ptr ;
  struct kobject *ldv_3_container_struct_kobject_ptr ;
  int ldv_3_ldv_param_3_2_default ;
  int tmp ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_is_visible, ldv_3_container_struct_kobject_ptr,
                                                 ldv_3_container_struct_attribute_ptr,
                                                 ldv_3_ldv_param_3_2_default);
    }
    goto ldv_call_3;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_10(void *arg0 )
{
  long (*ldv_10_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_10_container_struct_device_attribute ;
  struct device *ldv_10_container_struct_device_ptr ;
  char *ldv_10_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_10;
  return;
  ldv_call_10:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_10_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_show, ldv_10_container_struct_device_ptr,
                                                  ldv_10_container_struct_device_attribute,
                                                  ldv_10_ldv_param_3_2_default);
    ldv_free((void *)ldv_10_ldv_param_3_2_default);
    }
    goto ldv_call_10;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_11(void *arg0 )
{
  long (*ldv_11_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_11_container_struct_device_attribute ;
  struct device *ldv_11_container_struct_device_ptr ;
  char *ldv_11_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_11;
  return;
  ldv_call_11:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_11_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_show, ldv_11_container_struct_device_ptr,
                                                  ldv_11_container_struct_device_attribute,
                                                  ldv_11_ldv_param_3_2_default);
    ldv_free((void *)ldv_11_ldv_param_3_2_default);
    }
    goto ldv_call_11;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_12(void *arg0 )
{
  long (*ldv_12_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_12_container_struct_device_attribute ;
  struct device *ldv_12_container_struct_device_ptr ;
  char *ldv_12_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_12_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_show, ldv_12_container_struct_device_ptr,
                                                  ldv_12_container_struct_device_attribute,
                                                  ldv_12_ldv_param_3_2_default);
    ldv_free((void *)ldv_12_ldv_param_3_2_default);
    }
    goto ldv_call_12;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_13(void *arg0 )
{
  long (*ldv_13_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_13_container_struct_device_attribute ;
  struct device *ldv_13_container_struct_device_ptr ;
  char *ldv_13_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_13;
  return;
  ldv_call_13:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_13_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_show, ldv_13_container_struct_device_ptr,
                                                  ldv_13_container_struct_device_attribute,
                                                  ldv_13_ldv_param_3_2_default);
    ldv_free((void *)ldv_13_ldv_param_3_2_default);
    }
    goto ldv_call_13;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_4(void *arg0 )
{
  long (*ldv_4_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_4_container_struct_device_attribute ;
  struct device *ldv_4_container_struct_device_ptr ;
  char *ldv_4_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_4_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_show, ldv_4_container_struct_device_ptr,
                                                 ldv_4_container_struct_device_attribute,
                                                 ldv_4_ldv_param_3_2_default);
    ldv_free((void *)ldv_4_ldv_param_3_2_default);
    }
    goto ldv_call_4;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_5(void *arg0 )
{
  long (*ldv_5_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_5_container_struct_device_attribute ;
  struct device *ldv_5_container_struct_device_ptr ;
  char *ldv_5_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_5_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_show, ldv_5_container_struct_device_ptr,
                                                 ldv_5_container_struct_device_attribute,
                                                 ldv_5_ldv_param_3_2_default);
    ldv_free((void *)ldv_5_ldv_param_3_2_default);
    }
    goto ldv_call_5;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_6(void *arg0 )
{
  long (*ldv_6_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_6_container_struct_device_attribute ;
  struct device *ldv_6_container_struct_device_ptr ;
  char *ldv_6_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_6_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_show, ldv_6_container_struct_device_ptr,
                                                 ldv_6_container_struct_device_attribute,
                                                 ldv_6_ldv_param_3_2_default);
    ldv_free((void *)ldv_6_ldv_param_3_2_default);
    }
    goto ldv_call_6;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_7(void *arg0 )
{
  long (*ldv_7_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_7_container_struct_device_attribute ;
  struct device *ldv_7_container_struct_device_ptr ;
  char *ldv_7_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_7;
  return;
  ldv_call_7:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_7_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_show, ldv_7_container_struct_device_ptr,
                                                 ldv_7_container_struct_device_attribute,
                                                 ldv_7_ldv_param_3_2_default);
    ldv_free((void *)ldv_7_ldv_param_3_2_default);
    }
    goto ldv_call_7;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_8(void *arg0 )
{
  long (*ldv_8_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_8_container_struct_device_attribute ;
  struct device *ldv_8_container_struct_device_ptr ;
  char *ldv_8_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_8;
  return;
  ldv_call_8:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_8_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_show, ldv_8_container_struct_device_ptr,
                                                 ldv_8_container_struct_device_attribute,
                                                 ldv_8_ldv_param_3_2_default);
    ldv_free((void *)ldv_8_ldv_param_3_2_default);
    }
    goto ldv_call_8;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_device_attribute_dummy_resourceless_instance_9(void *arg0 )
{
  long (*ldv_9_callback_show)(struct device * , struct device_attribute * , char * ) ;
  struct device_attribute *ldv_9_container_struct_device_attribute ;
  struct device *ldv_9_container_struct_device_ptr ;
  char *ldv_9_ldv_param_3_2_default ;
  void *tmp ;
  int tmp___0 ;
  {
  goto ldv_call_9;
  return;
  ldv_call_9:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_9_ldv_param_3_2_default = (char *)tmp;
    ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_show, ldv_9_container_struct_device_ptr,
                                                 ldv_9_container_struct_device_attribute,
                                                 ldv_9_ldv_param_3_2_default);
    ldv_free((void *)ldv_9_ldv_param_3_2_default);
    }
    goto ldv_call_9;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_notifier_block_dummy_resourceless_instance_14(void *arg0 )
{
  int (*ldv_14_callback_notifier_call)(struct notifier_block * , unsigned long ,
                                       void * ) ;
  struct notifier_block *ldv_14_container_struct_notifier_block ;
  unsigned long ldv_14_ldv_param_3_1_default ;
  void *ldv_14_ldv_param_3_2_default ;
  struct ldv_struct_dummy_resourceless_instance_14 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_14 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_14 *)0)) {
    {
    ldv_14_container_struct_notifier_block = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_14;
  return;
  ldv_call_14:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_14_ldv_param_3_2_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_notifier_call, ldv_14_container_struct_notifier_block,
                                                  ldv_14_ldv_param_3_1_default, ldv_14_ldv_param_3_2_default);
    ldv_free(ldv_14_ldv_param_3_2_default);
    }
    goto ldv_call_14;
  } else {
    return;
  }
  return;
}
}
void ldv_timer_instance_callback_15_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_15(void *arg0 )
{
  struct timer_list *ldv_15_container_timer_list ;
  struct ldv_struct_timer_instance_15 *data ;
  {
  data = (struct ldv_struct_timer_instance_15 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_15 *)0)) {
    {
    ldv_15_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_15_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_15_2(ldv_15_container_timer_list->function, ldv_15_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  }
  return;
  return;
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_add(i, v);
  }
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_sub(i, v);
  }
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_sub_and_test(i, v);
  }
  return (tmp);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_inc(v);
  }
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_dec(v);
  }
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_add_return(i, v);
  }
  return (tmp);
}
}
static void ldv_synchronize_sched_35(void)
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
__inline static void rcu_read_lock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_lock();
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_unlock();
  }
  return;
}
}
__inline static void list_add_rcu(struct list_head *new , struct list_head *head )
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
__inline static void list_del_rcu(struct list_head *entry )
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
__inline static void list_splice_init_rcu(struct list_head *list , struct list_head *head ,
                                          void (*sync)(void) )
{
  {
  {
  ldv_check_for_read_section();
  }
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_100(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_102(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_103(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_105(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_106(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static bool ldv_try_module_get_107(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_module_try_module_get(ldv_func_arg1);
  }
  return (tmp != 0);
}
}
static void ldv_module_put_108(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_110(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_seq_lock_of_ipmi_smi();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_115(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static bool ldv_try_module_get_116(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_module_try_module_get(ldv_func_arg1);
  }
  return (tmp != 0);
}
}
static void ldv_module_put_117(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_118(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_121(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_122(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_123(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_127(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_128(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_129(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_130(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_132(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_maintenance_mode_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_133(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_maintenance_mode_lock_of_ipmi_smi();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_maintenance_mode_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_136(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_events_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_137(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_events_lock_of_ipmi_smi();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_138(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_events_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_140(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_141(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_142(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_143(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_144(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_xmit_msgs_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_145(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_xmit_msgs_lock_of_ipmi_smi();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_146(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_maintenance_mode_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_148(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_151(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_154(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_155(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_156(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_157(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_158(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmidriver_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_159(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_160(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmidriver_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_161(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_162(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_163(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_164(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_165(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_166(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_167(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_168(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_169(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_170(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_171(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_172(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_module_put_173(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_module_module_put(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_174(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_175(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_events_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_178(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_waiting_rcv_msgs_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_179(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_waiting_rcv_msgs_lock_of_ipmi_smi();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_180(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_waiting_rcv_msgs_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_182(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_xmit_msgs_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_184(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_waiting_rcv_msgs_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_186(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_xmit_msgs_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_189(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_192(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_maintenance_mode_lock_of_ipmi_smi();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_194(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_195(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_196(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_atomic_notifier_chain_register_197(struct atomic_notifier_head *ldv_func_arg1 ,
                                                  struct notifier_block *ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = atomic_notifier_chain_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_atomic_notifier_chain_register(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_atomic_notifier_chain_unregister_198(struct atomic_notifier_head *ldv_func_arg1 ,
                                                    struct notifier_block *ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = atomic_notifier_chain_unregister(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_atomic_notifier_chain_unregister(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_199(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_ldv_post_init_200(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  tmp = ldv_post_init(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_ldv_check_final_state_201(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_check_final_state_202(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_initialize_203(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr ) ;
bool ldv_in_interrupt_context(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  ldv_assert_linux_alloc_irq__wrong_flags(tmp___0 || flags == 32U);
  }
  return;
}
}
void ldv_linux_alloc_irq_check_alloc_nonatomic(void)
{
  bool tmp ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if ((int )tmp) {
    {
    ldv_assert_linux_alloc_irq__nonatomic(0);
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_linux_alloc_spinlock_check_alloc_flags(gfp_t flags )
{
  int tmp ;
  {
  if (flags != 32U && flags != 0U) {
    {
    tmp = ldv_exclusive_spin_is_locked();
    ldv_assert_linux_alloc_spinlock__wrong_flags(tmp == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_spinlock_check_alloc_nonatomic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_exclusive_spin_is_locked();
  ldv_assert_linux_alloc_spinlock__nonatomic(tmp == 0);
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr ) ;
int ldv_linux_alloc_usb_lock_lock = 1;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_linux_alloc_usb_lock_lock == 2) {
    {
    ldv_assert_linux_alloc_usb_lock__wrong_flags(flags == 16U || flags == 32U);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void)
{
  {
  {
  ldv_assert_linux_alloc_usb_lock__nonatomic(ldv_linux_alloc_usb_lock_lock == 1);
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_usb_lock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 2;
  return;
}
}
int ldv_linux_alloc_usb_lock_usb_trylock_device(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_alloc_usb_lock_usb_lock_device_for_reset(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
void ldv_linux_alloc_usb_lock_usb_unlock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_linux_usb_dev_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_linux_usb_dev_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_linux_usb_dev_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void ldv_assert_linux_arch_io__less_initial_decrement(int expr ) ;
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr ) ;
int ldv_linux_arch_io_iomem = 0;
void *ldv_linux_arch_io_io_mem_remap(size_t size )
{
  void *ptr ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  ptr = tmp;
  }
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem + 1;
    return (ptr);
  } else {
  }
  return (ptr);
}
}
void ldv_linux_arch_io_io_mem_unmap(void)
{
  {
  {
  ldv_assert_linux_arch_io__less_initial_decrement(ldv_linux_arch_io_iomem > 0);
  ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem - 1;
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void)
{
  {
  {
  ldv_assert_linux_arch_io__more_initial_at_exit(ldv_linux_arch_io_iomem == 0);
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr ) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__free_before_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_genhd__use_before_allocation(int expr ) ;
static int ldv_linux_block_genhd_disk_state = 0;
void ldv_linux_block_genhd_add_disk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__use_before_allocation(ldv_linux_block_genhd_disk_state == 1);
  ldv_linux_block_genhd_disk_state = 2;
  }
  return;
}
}
void ldv_linux_block_genhd_del_gendisk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__delete_before_add(ldv_linux_block_genhd_disk_state == 2);
  ldv_linux_block_genhd_disk_state = 1;
  }
  return;
}
}
void ldv_linux_block_genhd_put_disk(struct gendisk *disk )
{
  {
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    {
    ldv_assert_linux_block_genhd__free_before_allocation(ldv_linux_block_genhd_disk_state > 0);
    ldv_linux_block_genhd_disk_state = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_block_genhd_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_genhd__more_initial_at_exit(ldv_linux_block_genhd_disk_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_queue__double_allocation(int expr ) ;
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_queue__use_before_allocation(int expr ) ;
static int ldv_linux_block_queue_queue_state = 0;
void ldv_linux_block_queue_blk_cleanup_queue(void)
{
  {
  {
  ldv_assert_linux_block_queue__use_before_allocation(ldv_linux_block_queue_queue_state == 1);
  ldv_linux_block_queue_queue_state = 0;
  }
  return;
}
}
void ldv_linux_block_queue_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_queue__more_initial_at_exit(ldv_linux_block_queue_queue_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_request__double_get(int expr ) ;
void ldv_assert_linux_block_request__double_put(int expr ) ;
void ldv_assert_linux_block_request__get_at_exit(int expr ) ;
long ldv_is_err(void const *ptr ) ;
int ldv_linux_block_request_blk_rq = 0;
void ldv_linux_block_request_put_blk_rq(void)
{
  {
  {
  ldv_assert_linux_block_request__double_put(ldv_linux_block_request_blk_rq == 1);
  ldv_linux_block_request_blk_rq = 0;
  }
  return;
}
}
void ldv_linux_block_request_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_request__get_at_exit(ldv_linux_block_request_blk_rq == 0);
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr ) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr ) ;
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr ) ;
int ldv_undef_int_nonpositive(void) ;
int ldv_linux_drivers_base_class_usb_gadget_class = 0;
void *ldv_linux_drivers_base_class_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_malloc(sizeof(struct class));
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_drivers_base_class_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_drivers_base_class_unregister_class(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__double_deregistration(ldv_linux_drivers_base_class_usb_gadget_class == 1);
  ldv_linux_drivers_base_class_usb_gadget_class = 0;
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_drivers_base_class_unregister_class();
  }
  return;
}
}
void ldv_linux_drivers_base_class_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__registered_at_exit(ldv_linux_drivers_base_class_usb_gadget_class == 0);
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2176UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr ) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr ) ;
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr ) ;
int ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
int ldv_linux_fs_char_dev_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_fs_char_dev_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_fs_char_dev_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__double_deregistration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 1);
  ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
  }
  return;
}
}
void ldv_linux_fs_char_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__registered_at_exit(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr ) ;
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr ) ;
int ldv_linux_fs_sysfs_sysfs = 0;
int ldv_linux_fs_sysfs_sysfs_create_group(void)
{
  int res ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int_nonpositive();
  res = tmp;
  }
  if (res == 0) {
    ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs + 1;
    return (0);
  } else {
  }
  return (res);
}
}
void ldv_linux_fs_sysfs_sysfs_remove_group(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__less_initial_decrement(ldv_linux_fs_sysfs_sysfs > 0);
  ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs - 1;
  }
  return;
}
}
void ldv_linux_fs_sysfs_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__more_initial_at_exit(ldv_linux_fs_sysfs_sysfs == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr ) ;
int ldv_linux_kernel_locking_rwlock_rlock = 1;
int ldv_linux_kernel_locking_rwlock_wlock = 1;
void ldv_linux_kernel_locking_rwlock_read_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(ldv_linux_kernel_locking_rwlock_rlock > 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + -1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_wlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(ldv_linux_kernel_locking_rwlock_wlock != 1);
  ldv_linux_kernel_locking_rwlock_wlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_rwlock_read_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_kernel_locking_rwlock_write_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_wlock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
void ldv_linux_kernel_locking_rwlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(ldv_linux_kernel_locking_rwlock_rlock == 1);
  ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(ldv_linux_kernel_locking_rwlock_wlock == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr ) ;
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr ) ;
int ldv_linux_kernel_module_module_refcounter = 1;
void ldv_linux_kernel_module_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_linux_kernel_module_try_module_get(struct module *module )
{
  int tmp ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp == 1) {
      ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_module_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    ldv_assert_linux_kernel_module__less_initial_decrement(ldv_linux_kernel_module_module_refcounter > 1);
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter - 1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_module_module_put_and_exit(void)
{
  {
  {
  ldv_linux_kernel_module_module_put((struct module *)1);
  }
  LDV_LINUX_KERNEL_MODULE_STOP: ;
  goto LDV_LINUX_KERNEL_MODULE_STOP;
}
}
unsigned int ldv_linux_kernel_module_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_linux_kernel_module_module_refcounter + -1));
}
}
void ldv_linux_kernel_module_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_module__more_initial_at_exit(ldv_linux_kernel_module_module_refcounter == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_srcu_srcu_nested = 0;
void ldv_linux_kernel_rcu_srcu_srcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_srcu_srcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__more_unlocks(ldv_linux_kernel_rcu_srcu_srcu_nested > 0);
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = 0;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh > 0);
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = 0;
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_lock_sched(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_unlock_sched(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched > 0);
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_rcu_nested = 0;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(ldv_linux_kernel_rcu_update_lock_rcu_nested > 0);
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
static bool __ldv_in_interrupt_context = 0;
void ldv_switch_to_interrupt_context(void)
{
  {
  __ldv_in_interrupt_context = 1;
  return;
}
}
void ldv_switch_to_process_context(void)
{
  {
  __ldv_in_interrupt_context = 0;
  return;
}
}
bool ldv_in_interrupt_context(void)
{
  {
  return (__ldv_in_interrupt_context);
}
}
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr ) ;
extern int nr_cpu_ids ;
unsigned long ldv_undef_ulong(void) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assert_linux_lib_find_bit__offset_out_of_range(offset <= size);
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
void ldv_linux_lib_find_bit_initialize(void)
{
  {
  {
  ldv_assume(nr_cpu_ids > 0);
  }
  return;
}
}
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr ) ;
unsigned short ldv_linux_mmc_sdio_func_sdio_element = 0U;
void ldv_linux_mmc_sdio_func_check_context(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__wrong_params((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_claim_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__double_claim((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  ldv_linux_mmc_sdio_func_sdio_element = (unsigned short )((func->card)->host)->index;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_release_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__release_without_claim((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  ldv_linux_mmc_sdio_func_sdio_element = 0U;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_check_final_state(void)
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__unreleased_at_exit((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  }
  return;
}
}
void ldv_assert_linux_net_register__wrong_return_value(int expr ) ;
int ldv_pre_register_netdev(void) ;
int ldv_linux_net_register_probe_state = 0;
int ldv_pre_register_netdev(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_net_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_register_reset_error_counter(void)
{
  {
  ldv_linux_net_register_probe_state = 0;
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_net_register_probe_state == 1) {
    {
    ldv_assert_linux_net_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_net_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_lock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr ) ;
int rtnllocknumber = 0;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_unlock(rtnllocknumber == 1);
  rtnllocknumber = 0;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  rtnllocknumber = 1;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_before_ieee80211_unregister_hw(void)
{
  {
  {
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
int ldv_linux_net_rtnetlink_rtnl_is_locked(void)
{
  int tmp ;
  {
  if (rtnllocknumber != 0) {
    return (rtnllocknumber);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_net_rtnetlink_rtnl_trylock(void)
{
  int tmp ;
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  tmp = ldv_linux_net_rtnetlink_rtnl_is_locked();
  }
  if (tmp == 0) {
    rtnllocknumber = 1;
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_rtnetlink_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__lock_on_exit(rtnllocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr ) ;
void ldv_assert_linux_net_sock__double_release(int expr ) ;
int locksocknumber = 0;
void ldv_linux_net_sock_past_lock_sock_nested(void)
{
  {
  locksocknumber = locksocknumber + 1;
  return;
}
}
bool ldv_linux_net_sock_lock_sock_fast(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    locksocknumber = locksocknumber + 1;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_net_sock_unlock_sock_fast(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_before_release_sock(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(locksocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_coherent_coherent_state = 0;
void *ldv_linux_usb_coherent_usb_alloc_coherent(size_t size )
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return (arbitrary_memory);
  } else {
  }
  ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + 1;
  return (arbitrary_memory);
}
}
void ldv_linux_usb_coherent_usb_free_coherent(void *addr )
{
  {
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    {
    ldv_assert_linux_usb_coherent__less_initial_decrement(ldv_linux_usb_coherent_coherent_state > 0);
    ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_coherent_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_coherent__more_initial_at_exit(ldv_linux_usb_coherent_coherent_state == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0 ? LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 1) {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_initialize(void)
{
  {
  LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_linux_usb_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr ) ;
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr ) ;
int ldv_linux_usb_gadget_usb_gadget = 0;
void *ldv_linux_usb_gadget_create_class(void *is_got )
{
  long tmp ;
  {
  {
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_usb_gadget_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_class(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_linux_usb_gadget_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_usb_gadget_unregister_class();
  }
  return;
}
}
int ldv_linux_usb_gadget_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_usb_gadget_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
int ldv_linux_usb_gadget_register_usb_gadget(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__double_usb_gadget_registration(ldv_linux_usb_gadget_usb_gadget == 0);
    ldv_linux_usb_gadget_usb_gadget = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_usb_gadget(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(ldv_linux_usb_gadget_usb_gadget == 1);
  ldv_linux_usb_gadget_usb_gadget = 0;
  }
  return;
}
}
void ldv_linux_usb_gadget_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_register__wrong_return_value(int expr ) ;
int ldv_pre_usb_register_driver(void) ;
int ldv_linux_usb_register_probe_state = 0;
int ldv_pre_usb_register_driver(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_usb_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_usb_register_reset_error_counter(void)
{
  {
  ldv_linux_usb_register_probe_state = 0;
  return;
}
}
void ldv_linux_usb_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_usb_register_probe_state == 1) {
    {
    ldv_assert_linux_usb_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_usb_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_urb_urb_state = 0;
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    ldv_assert_linux_usb_urb__less_initial_decrement(ldv_linux_usb_urb_urb_state > 0);
    ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_urb_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_urb__more_initial_at_exit(ldv_linux_usb_urb_urb_state == 0);
  }
  return;
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
int ldv_undef_int_negative(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi ;
void ldv_linux_kernel_locking_mutex_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_cmd_rcvrs_mutex_of_ipmi_smi(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(atomic_t *cnt ,
                                                                                         struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ipmi_interfaces_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_ipmi_interfaces_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_ipmi_interfaces_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_ipmi_interfaces_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_ipmi_interfaces_mutex(atomic_t *cnt ,
                                                                                   struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_ipmi_interfaces_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_ipmi_interfaces_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex ;
void ldv_linux_kernel_locking_mutex_mutex_lock_ipmidriver_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_ipmidriver_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_ipmidriver_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_ipmidriver_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_ipmidriver_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_ipmidriver_mutex(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_ipmidriver_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_ipmidriver_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi ;
void ldv_linux_kernel_locking_mutex_mutex_lock_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_proc_entry_lock_of_ipmi_smi(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_proc_entry_lock_of_ipmi_smi(atomic_t *cnt ,
                                                                                         struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_proc_entry_lock_of_ipmi_smi(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex ;
void ldv_linux_kernel_locking_mutex_mutex_lock_smi_watchers_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_smi_watchers_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_smi_watchers_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_smi_watchers_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_smi_watchers_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_smi_watchers_mutex(atomic_t *cnt ,
                                                                                struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_smi_watchers_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_smi_watchers_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_cmd_rcvrs_mutex_of_ipmi_smi);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmi_interfaces_mutex);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_ipmidriver_mutex);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_proc_entry_lock_of_ipmi_smi);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_smi_watchers_mutex);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_events_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_events_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 2);
  ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_events_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_events_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_events_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_events_lock_of_ipmi_smi(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_events_lock_of_ipmi_smi();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_events_lock_of_ipmi_smi(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_events_lock_of_ipmi_smi(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_maintenance_mode_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_maintenance_mode_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 2);
  ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_maintenance_mode_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_maintenance_mode_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_maintenance_mode_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_maintenance_mode_lock_of_ipmi_smi(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_maintenance_mode_lock_of_ipmi_smi();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_maintenance_mode_lock_of_ipmi_smi(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_maintenance_mode_lock_of_ipmi_smi(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_seq_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_seq_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 2);
  ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_seq_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_seq_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_seq_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_seq_lock_of_ipmi_smi(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_seq_lock_of_ipmi_smi();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_seq_lock_of_ipmi_smi(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_seq_lock_of_ipmi_smi(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 2);
  ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_waiting_rcv_msgs_lock_of_ipmi_smi();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_waiting_rcv_msgs_lock_of_ipmi_smi(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_xmit_msgs_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_xmit_msgs_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 2);
  ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_xmit_msgs_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_xmit_msgs_lock_of_ipmi_smi(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_xmit_msgs_lock_of_ipmi_smi(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_xmit_msgs_lock_of_ipmi_smi(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_xmit_msgs_lock_of_ipmi_smi();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_xmit_msgs_lock_of_ipmi_smi(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_xmit_msgs_lock_of_ipmi_smi(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_events_lock_of_ipmi_smi == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_maintenance_mode_lock_of_ipmi_smi == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_seq_lock_of_ipmi_smi == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_waiting_rcv_msgs_lock_of_ipmi_smi == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_xmit_msgs_lock_of_ipmi_smi == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 2;
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr ) ;
void ldv_assert_linux_lib_idr__double_init(int expr ) ;
void ldv_assert_linux_lib_idr__more_at_exit(int expr ) ;
void ldv_assert_linux_lib_idr__not_initialized(int expr ) ;
static int ldv_linux_lib_idr_idr = 0;
void ldv_linux_lib_idr_idr_init(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr == 0);
  ldv_linux_lib_idr_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr == 0 || ldv_linux_lib_idr_idr == 3);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_rtnetlink__double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_idr__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__not_initialized(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_lib_idr__more_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_sched_completion__double_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_net_sock__double_release(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_dev__probe_failed(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_request__double_get(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__double_put(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_request__get_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_queue__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__use_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__free_before_allocation(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_arch_io__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_register__wrong_return_value(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void *PDE_DATA(const struct inode *arg0) {
  return ldv_malloc(0UL);
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int atomic_notifier_chain_register(struct atomic_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int atomic_notifier_chain_unregister(struct atomic_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
struct device *driver_find_device(struct device_driver *arg0, struct device *arg1, void *arg2, int (*arg3)(struct device *, void *)) {
  return ldv_malloc(sizeof(struct device));
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
char *kasprintf(gfp_t arg0, const char *arg1, ...) {
  return ldv_malloc(sizeof(char));
}
char *kstrdup(const char *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(char));
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int platform_device_register(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return ldv_malloc(0UL);
}
void proc_remove(struct proc_dir_entry *arg0) {
  return;
}
void put_device(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int rcu_read_lock_held() {
  return __VERIFIER_nondet_int();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_putc(struct seq_file *arg0, char arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_link(struct kobject *arg0, struct kobject *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_link(struct kobject *arg0, const char *arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
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
