// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Skip function: __VERIFIER_nondet_pointer

// Skip function: __VERIFIER_nondet_ulong

// Function: __class_create
// with type: struct class *__class_create(struct module *, const char *, struct lock_class_key *)
// with return type: (struct class)*
struct class *__class_create(struct module *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Pointer type
  return ldv_malloc(sizeof(struct class));
}

// Function: __copy_from_user_overflow
// with type: void __copy_from_user_overflow()
// with return type: void
void __copy_from_user_overflow() {
  // Void type
  return;
}

// Function: __copy_to_user_overflow
// with type: void __copy_to_user_overflow()
// with return type: void
void __copy_to_user_overflow() {
  // Void type
  return;
}

// Function: __dynamic_pr_debug
// with type: void __dynamic_pr_debug(struct _ddebug *, const char *, ...)
// with return type: void
void __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  // Void type
  return;
}

// Function: __fdget
// with type: unsigned long int __fdget(unsigned int)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __fdget(unsigned int arg0) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: __init_rwsem
// with type: void __init_rwsem(struct rw_semaphore *, const char *, struct lock_class_key *)
// with return type: void
void __init_rwsem(struct rw_semaphore *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Void type
  return;
}

// Function: __init_waitqueue_head
// with type: void __init_waitqueue_head(wait_queue_head_t *, const char *, struct lock_class_key *)
// with return type: void
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Void type
  return;
}

// Function: __list_add
// with type: void __list_add(struct list_head *, struct list_head *, struct list_head *)
// with return type: void
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  // Void type
  return;
}

// Function: __might_fault
// with type: void __might_fault(const char *, int)
// with return type: void
void __might_fault(const char *arg0, int arg1) {
  // Void type
  return;
}

// Function: __might_sleep
// with type: void __might_sleep(const char *, int, int)
// with return type: void
void __might_sleep(const char *arg0, int arg1, int arg2) {
  // Void type
  return;
}

// Function: __mutex_init
// with type: void __mutex_init(struct mutex *, const char *, struct lock_class_key *)
// with return type: void
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Void type
  return;
}

// Function: __request_module
// with type: int __request_module(bool , const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: __wake_up
// with type: void __wake_up(wait_queue_head_t *, unsigned int, int, void *)
// with return type: void
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  // Void type
  return;
}

// Function: _copy_from_user
// with type: unsigned long int _copy_from_user(void *, const void *, unsigned int)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: _copy_to_user
// with type: unsigned long int _copy_to_user(void *, const void *, unsigned int)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: alloc_chrdev_region
// with type: int alloc_chrdev_region(dev_t *, unsigned int, unsigned int, const char *)
// with return type: int
int __VERIFIER_nondet_int(void);
int alloc_chrdev_region(dev_t *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: anon_inode_getfile
// with type: struct file *anon_inode_getfile(const char *, const struct file_operations *, void *, int)
// with return type: (struct file)*
struct file *anon_inode_getfile(const char *arg0, const struct file_operations *arg1, void *arg2, int arg3) {
  // Pointer type
  return ldv_malloc(sizeof(struct file));
}

// Skip function: calloc

// Function: cdev_add
// with type: int cdev_add(struct cdev *, dev_t , unsigned int)
// with return type: int
int __VERIFIER_nondet_int(void);
int cdev_add(struct cdev *arg0, dev_t arg1, unsigned int arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: cdev_del
// with type: void cdev_del(struct cdev *)
// with return type: void
void cdev_del(struct cdev *arg0) {
  // Void type
  return;
}

// Function: cdev_init
// with type: void cdev_init(struct cdev *, const struct file_operations *)
// with return type: void
void cdev_init(struct cdev *arg0, const struct file_operations *arg1) {
  // Void type
  return;
}

// Function: class_destroy
// with type: void class_destroy(struct class *)
// with return type: void
void class_destroy(struct class *arg0) {
  // Void type
  return;
}

// Function: debug_lockdep_rcu_enabled
// with type: int debug_lockdep_rcu_enabled()
// with return type: int
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dev_warn
// with type: void dev_warn(const struct device *, const char *, ...)
// with return type: void
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  // Void type
  return;
}

// Function: device_create
// with type: struct device *device_create(struct class *, struct device *, dev_t , void *, const char *, ...)
// with return type: (struct device)*
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  // Pointer type
  return ldv_malloc(sizeof(struct device));
}

// Function: device_destroy
// with type: void device_destroy(struct class *, dev_t )
// with return type: void
void device_destroy(struct class *arg0, dev_t arg1) {
  // Void type
  return;
}

// Function: down_read
// with type: void down_read(struct rw_semaphore *)
// with return type: void
void down_read(struct rw_semaphore *arg0) {
  // Void type
  return;
}

// Function: down_write
// with type: void down_write(struct rw_semaphore *)
// with return type: void
void down_write(struct rw_semaphore *arg0) {
  // Void type
  return;
}

// Function: fd_install
// with type: void fd_install(unsigned int, struct file *)
// with return type: void
void fd_install(unsigned int arg0, struct file *arg1) {
  // Void type
  return;
}

// Function: finish_wait
// with type: void finish_wait(wait_queue_head_t *, wait_queue_t *)
// with return type: void
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  // Void type
  return;
}

// Function: fput
// with type: void fput(struct file *)
// with return type: void
void fput(struct file *arg0) {
  // Void type
  return;
}

// Function: get_unused_fd_flags
// with type: int get_unused_fd_flags(unsigned int)
// with return type: int
int __VERIFIER_nondet_int(void);
int get_unused_fd_flags(unsigned int arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: idr_alloc
// with type: int idr_alloc(struct idr *, void *, int, int, gfp_t )
// with return type: int
int __VERIFIER_nondet_int(void);
int idr_alloc(struct idr *arg0, void *arg1, int arg2, int arg3, gfp_t arg4) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: idr_destroy
// with type: void idr_destroy(struct idr *)
// with return type: void
void idr_destroy(struct idr *arg0) {
  // Void type
  return;
}

// Function: idr_find_slowpath
// with type: void *idr_find_slowpath(struct idr *, int)
// with return type: (void)*
void *idr_find_slowpath(struct idr *arg0, int arg1) {
  // Pointer type
  return ldv_malloc(0UL);
}

// Function: idr_init
// with type: void idr_init(struct idr *)
// with return type: void
void idr_init(struct idr *arg0) {
  // Void type
  return;
}

// Function: idr_remove
// with type: void idr_remove(struct idr *, int)
// with return type: void
void idr_remove(struct idr *arg0, int arg1) {
  // Void type
  return;
}

// Function: iommu_group_for_each_dev
// with type: int iommu_group_for_each_dev(struct iommu_group *, void *, int (*)(struct device *, void *))
// with return type: int
int __VERIFIER_nondet_int(void);
int iommu_group_for_each_dev(struct iommu_group *arg0, void *arg1, int (*arg2)(struct device *, void *)) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: iommu_group_get
// with type: struct iommu_group *iommu_group_get(struct device *)
// with return type: (struct iommu_group)*
struct iommu_group *iommu_group_get(struct device *arg0) {
  // Pointer type
  return ldv_malloc(0UL);
}

// Function: iommu_group_id
// with type: int iommu_group_id(struct iommu_group *)
// with return type: int
int __VERIFIER_nondet_int(void);
int iommu_group_id(struct iommu_group *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: iommu_group_put
// with type: void iommu_group_put(struct iommu_group *)
// with return type: void
void iommu_group_put(struct iommu_group *arg0) {
  // Void type
  return;
}

// Function: iommu_group_register_notifier
// with type: int iommu_group_register_notifier(struct iommu_group *, struct notifier_block *)
// with return type: int
int __VERIFIER_nondet_int(void);
int iommu_group_register_notifier(struct iommu_group *arg0, struct notifier_block *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: iommu_group_unregister_notifier
// with type: int iommu_group_unregister_notifier(struct iommu_group *, struct notifier_block *)
// with return type: int
int __VERIFIER_nondet_int(void);
int iommu_group_unregister_notifier(struct iommu_group *arg0, struct notifier_block *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: kasprintf
// with type: char *kasprintf(gfp_t , const char *, ...)
// with return type: (char)*
char *kasprintf(gfp_t arg0, const char *arg1, ...) {
  // Pointer type
  return ldv_malloc(sizeof(char));
}

// Skip function: kfree

// Function: ldv_initialize
// with type: void ldv_initialize()
// with return type: void
void ldv_initialize() {
  // Void type
  return;
}

// Function: ldv_open_1
// with type: int ldv_open_1()
// with return type: int
int __VERIFIER_nondet_int(void);
int ldv_open_1() {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: list_del
// with type: void list_del(struct list_head *)
// with return type: void
void list_del(struct list_head *arg0) {
  // Void type
  return;
}

// Skip function: malloc

// Skip function: memset

// Function: misc_deregister
// with type: int misc_deregister(struct miscdevice *)
// with return type: int
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: misc_register
// with type: int misc_register(struct miscdevice *)
// with return type: int
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: mutex_lock_nested
// with type: void mutex_lock_nested(struct mutex *, unsigned int)
// with return type: void
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  // Void type
  return;
}

// Function: mutex_unlock
// with type: void mutex_unlock(struct mutex *)
// with return type: void
void mutex_unlock(struct mutex *arg0) {
  // Void type
  return;
}

// Function: prepare_to_wait_event
// with type: long int prepare_to_wait_event(wait_queue_head_t *, wait_queue_t *, int)
// with return type: long int
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  // Simple type
  return __VERIFIER_nondet_long();
}

// Function: printk
// with type: int printk(const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: put_unused_fd
// with type: void put_unused_fd(unsigned int)
// with return type: void
void put_unused_fd(unsigned int arg0) {
  // Void type
  return;
}

// Function: schedule_timeout
// with type: long int schedule_timeout(long)
// with return type: long int
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  // Simple type
  return __VERIFIER_nondet_long();
}

// Skip function: strcmp

// Function: strndup_user
// with type: char *strndup_user(const char *, long)
// with return type: (char)*
char *strndup_user(const char *arg0, long arg1) {
  // Pointer type
  return ldv_malloc(sizeof(char));
}

// Function: unregister_chrdev_region
// with type: void unregister_chrdev_region(dev_t , unsigned int)
// with return type: void
void unregister_chrdev_region(dev_t arg0, unsigned int arg1) {
  // Void type
  return;
}

// Function: up_read
// with type: void up_read(struct rw_semaphore *)
// with return type: void
void up_read(struct rw_semaphore *arg0) {
  // Void type
  return;
}

// Function: up_write
// with type: void up_write(struct rw_semaphore *)
// with return type: void
void up_write(struct rw_semaphore *arg0) {
  // Void type
  return;
}

// Function: warn_slowpath_fmt
// with type: void warn_slowpath_fmt(const char *, const int, const char *, ...)
// with return type: void
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  // Void type
  return;
}

// Function: warn_slowpath_null
// with type: void warn_slowpath_null(const char *, const int)
// with return type: void
void warn_slowpath_null(const char *arg0, const int arg1) {
  // Void type
  return;
}

